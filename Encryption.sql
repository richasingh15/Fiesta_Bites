USE master;
GO
SELECT *
FROM sys.symmetric_keys
WHERE name = '##MS_ServiceMasterKey##';
GO

-- Create database Key
USE Fiesta_Bites;
GO
CREATE MASTER KEY ENCRYPTION BY PASSWORD = 'Password123';
GO

-- Create self signed certificate
USE Fiesta_Bites;
GO
CREATE CERTIFICATE Certificate1
WITH SUBJECT = 'Protect Data';
GO

-- Create symmetric Key
USE Fiesta_Bites;
GO
CREATE SYMMETRIC KEY SymmetricKey1 
 WITH ALGORITHM = AES_128 
 ENCRYPTION BY CERTIFICATE Certificate1;
GO

USE Fiesta_Bites;
GO
ALTER TABLE Payment
ADD CVV_encrypt varbinary(MAX) NULL
GO

-- Populating encrypted data into new column
USE Fiesta_Bites;
GO
-- Opens the symmetric key for use
OPEN SYMMETRIC KEY SymmetricKey1
DECRYPTION BY CERTIFICATE Certificate1;
GO
UPDATE Payment
SET CVV_encrypt = EncryptByKey (Key_GUID('SymmetricKey1'),CVV)
FROM dbo.Payment;
GO
-- Closes the symmetric key
CLOSE SYMMETRIC KEY SymmetricKey1;
GO

USE Fiesta_Bites;
GO
ALTER TABLE Payment
DROP COLUMN CVV;
GO

USE Fiesta_Bites;
GO
OPEN SYMMETRIC KEY SymmetricKey1
DECRYPTION BY CERTIFICATE Certificate1;
GO
-- Now list the original ID, the encrypted ID 
SELECT CVV_encrypt AS 'Encrypted CVV',
CONVERT(varchar, DecryptByKey(CVV_encrypt)) AS 'Decrypted CVV'
FROM dbo.Payment;
 
 -- Close the symmetric key
CLOSE SYMMETRIC KEY SymmetricKey1;
GO

USE Fiesta_Bites;
GO
OPEN SYMMETRIC KEY SymmetricKey1
DECRYPTION BY CERTIFICATE Certificate1;
-- Performs the update of the record
INSERT INTO dbo.Payment(PaymentID, CustEmail, Bank, AccountNumber, CVV_encrypt)
VALUES (99,'kul@gmail.com', 'BOFA', '4567890', EncryptByKey( Key_GUID('SymmetricKey1'), CONVERT(varchar,'454') ) );    
GO


GO
SELECT PaymentID, Cvv_encrypt AS 'Encrypted CVV',
CONVERT(varchar, DecryptByKey(cvv_encrypt)) AS 'Decrypted CVV'
FROM dbo.Payment;

DROP TABLE dbo.Payment;

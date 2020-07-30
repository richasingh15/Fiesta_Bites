CREATE PROCEDURE

dbo.InsertCustomerCareAgents

 @Agentid Int,

@AgentPhone Int ,

@CasesSolved Int ,

@AgentRating Int ,


@AgentName Varchar(30)

AS  

        IF     @Agentid IS NULL OR @AgentPhone IS NULL OR @CasesSolved IS NULL

             OR @AgentRating IS NULL OR @AgentName IS NULL

                 raiserror ('Values cannot be null' , 16 , 16)

  

        ELSE

                       INSERT INTO dbo.CustomerCareAgents(Agentid ,AgentPhone , CasesSolved, AgentRating, AgentName)

                       VALUES (   

                            @AgentID,

@AgentPhone,

@CasesSolved,

@AgentRating,


@AgentName)
GO 

EXEC dbo.InsertCustomerCareAgents @AgentID = 89,

@AgentPhone = 1233456,

@CasesSolved = 4,

@AgentRating = 8,


@AgentName = 'David';

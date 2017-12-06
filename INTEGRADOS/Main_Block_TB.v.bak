module Frame_Makers_TB;

	reg reset, RX, SP, ERROR;
   wire RTR, IDE, EDL, BRS;
   wire F_STF, F_EOF, F_CRC, F_IDF, F_ACK_D, F_CRC_D;
   wire [10:0] IDF;
   wire [17:0] IDF_ex;
   wire [3:0] DLC;
   wire [14:0] CRC;
   wire [6:0] EOF;

Frame_Makers block (reset, RX, SP, ERROR, RTR, IDE, EDL, BRS, F_STF, F_EOF, F_CRC, F_IDF, F_ACK_D, F_CRC_D, IDF, IDF_ex, DLC, CRC, EOF);

  initial 
  SP = 0;
  
  always
  #3 SP = ~SP;

  initial begin
  
    RX = 0 ; reset = 0; ERROR = 1;# 6;//SOF CAN Base Data
    RX = 0 ; reset = 0; ERROR = 1;# 6;//Identifier Begins
    RX = 0 ; reset = 0; ERROR = 1;# 6;
    RX = 0 ; reset = 0; ERROR = 1;# 6;
    RX = 0 ; reset = 0; ERROR = 1;# 6;
    RX = 0 ; reset = 0; ERROR = 1;# 6;
    RX = 0 ; reset = 0; ERROR = 1;# 6;
    RX = 0 ; reset = 0; ERROR = 1;# 6;
    RX = 0 ; reset = 0; ERROR = 1;# 6;
    RX = 0 ; reset = 0; ERROR = 1;# 6;
    RX = 0 ; reset = 0; ERROR = 1;# 6;
    RX = 1 ; reset = 0; ERROR = 1;# 6;//Identifier Ends
    RX = 0 ; reset = 0; ERROR = 1;# 6;
    RX = 0 ; reset = 0; ERROR = 1;# 6;
    RX = 0 ; reset = 0; ERROR = 1;# 6;
    RX = 0 ; reset = 0; ERROR = 1;# 6;
    RX = 0 ; reset = 0; ERROR = 1;# 6;
    RX = 1 ; reset = 0; ERROR = 1;# 6;
    RX = 0 ; reset = 0; ERROR = 1;# 6;
    RX = 0 ; reset = 0; ERROR = 1;# 6;//DATA Begins
    RX = 0 ; reset = 0; ERROR = 1;# 6;
    RX = 0 ; reset = 0; ERROR = 1;# 6;
    RX = 1 ; reset = 0; ERROR = 1;# 6;
    RX = 1 ; reset = 0; ERROR = 1;# 6;
    RX = 0 ; reset = 0; ERROR = 1;# 6;
    RX = 1 ; reset = 0; ERROR = 1;# 6;
    RX = 0 ; reset = 0; ERROR = 1;# 6;
    RX = 1 ; reset = 0; ERROR = 1;# 6;
    RX = 0 ; reset = 0; ERROR = 1;# 6;
    RX = 1 ; reset = 0; ERROR = 1;# 6;
    RX = 1 ; reset = 0; ERROR = 1;# 6;
    RX = 1 ; reset = 0; ERROR = 1;# 6;
    RX = 1 ; reset = 0; ERROR = 1;# 6;
    RX = 0 ; reset = 0; ERROR = 1;# 6;
    RX = 0 ; reset = 0; ERROR = 1;# 6;//Data Ends
    RX = 1 ; reset = 0; ERROR = 1;# 6;//CRC Begins
    RX = 1 ; reset = 0; ERROR = 1;# 6;
    RX = 1 ; reset = 0; ERROR = 1;# 6;
    RX = 1 ; reset = 0; ERROR = 1;# 6;
    RX = 1 ; reset = 0; ERROR = 1;# 6;
    RX = 1 ; reset = 0; ERROR = 1;# 6;
    RX = 1 ; reset = 0; ERROR = 1;# 6;
    RX = 1 ; reset = 0; ERROR = 1;# 6;
    RX = 1 ; reset = 0; ERROR = 1;# 6;
    RX = 1 ; reset = 0; ERROR = 1;# 6;
    RX = 1 ; reset = 0; ERROR = 1;# 6;
    RX = 1 ; reset = 0; ERROR = 1;# 6;
    RX = 1 ; reset = 0; ERROR = 1;# 6;
    RX = 1 ; reset = 0; ERROR = 1;# 6;
    RX = 1 ; reset = 0; ERROR = 1;# 6;//CRC Ends
    RX = 1 ; reset = 0; ERROR = 1;# 6;
    RX = 1 ; reset = 0; ERROR = 1;# 6;
    RX = 1 ; reset = 0; ERROR = 1;# 6;
    RX = 1 ; reset = 0; ERROR = 1;# 6;
    RX = 1 ; reset = 0; ERROR = 1;# 6;
    RX = 1 ; reset = 0; ERROR = 1;# 6;
    RX = 1 ; reset = 0; ERROR = 1;# 6;
    RX = 1 ; reset = 0; ERROR = 1;# 6;
    RX = 1 ; reset = 0; ERROR = 1;# 6;
    RX = 1 ; reset = 0; ERROR = 1;# 6;//Frame Ends
    
    RX = 1 ; reset = 0; ERROR = 1;# 6;//INTERMISSION Begins
    RX = 1 ; reset = 0; ERROR = 1;# 6;//INTERMISSION ENDS
    
    RX = 1 ; reset = 0; ERROR = 1;# 6;//BUS IDLE
    RX = 1 ; reset = 0; ERROR = 1;# 6;//BUS IDLE
    
    RX = 0 ; reset = 0; ERROR = 1;# 6;//SOF CAN Base Data
    RX = 0 ; reset = 0; ERROR = 1;# 6;//Identifier Begins
    RX = 0 ; reset = 0; ERROR = 1;# 6;
    RX = 0 ; reset = 0; ERROR = 1;# 6;
    RX = 0 ; reset = 0; ERROR = 1;# 6;
    RX = 0 ; reset = 0; ERROR = 1;# 6;
    RX = 0 ; reset = 0; ERROR = 1;# 6;
    RX = 0 ; reset = 0; ERROR = 1;# 6;
    RX = 0 ; reset = 0; ERROR = 1;# 6;
    RX = 0 ; reset = 0; ERROR = 1;# 6;
    RX = 1 ; reset = 0; ERROR = 1;# 6;
    RX = 0 ; reset = 0; ERROR = 1;# 6;//Identifier Ends
    RX = 0 ; reset = 0; ERROR = 1;# 6;
    RX = 0 ; reset = 0; ERROR = 1;# 6;
    RX = 0 ; reset = 0; ERROR = 1;# 6;
    RX = 0 ; reset = 0; ERROR = 1;# 6;
    RX = 0 ; reset = 0; ERROR = 1;# 6;
    RX = 1 ; reset = 0; ERROR = 1;# 6;
    RX = 0 ; reset = 0; ERROR = 1;# 6;
    RX = 0 ; reset = 0; ERROR = 1;# 6;//DATA Begins
    RX = 0 ; reset = 0; ERROR = 1;# 6;
    RX = 0 ; reset = 0; ERROR = 1;# 6;
    RX = 1 ; reset = 0; ERROR = 1;# 6;
    RX = 1 ; reset = 0; ERROR = 1;# 6;
    RX = 1 ; reset = 0; ERROR = 1;# 6;
    RX = 1 ; reset = 0; ERROR = 1;# 6;
    RX = 1 ; reset = 0; ERROR = 1;# 6;
    RX = 1 ; reset = 0; ERROR = 1;# 6;//Erro de Stuff
    
    RX = 0 ; reset = 0; ERROR = 0;# 6;//Error Frame
    RX = 0 ; reset = 0; ERROR = 1;# 6;
    RX = 0 ; reset = 0; ERROR = 1;# 6;
    RX = 0 ; reset = 0; ERROR = 1;# 6;
    RX = 0 ; reset = 0; ERROR = 1;# 6;
    RX = 0 ; reset = 0; ERROR = 1;# 6;
    RX = 0 ; reset = 0; ERROR = 1;# 6;//Superposition
    RX = 0 ; reset = 0; ERROR = 1;# 6;
    RX = 0 ; reset = 0; ERROR = 1;# 6;
    RX = 0 ; reset = 0; ERROR = 1;# 6;
    RX = 1 ; reset = 0; ERROR = 1;# 6;//Delimiter
    RX = 0 ; reset = 0; ERROR = 1;# 6;
    RX = 1 ; reset = 0; ERROR = 1;# 6;//Recomeço do Delimiter
    RX = 1 ; reset = 0; ERROR = 1;# 6;
    RX = 1 ; reset = 0; ERROR = 1;# 6;
    RX = 1 ; reset = 0; ERROR = 1;# 6;
    RX = 1 ; reset = 0; ERROR = 1;# 6;
    RX = 1 ; reset = 0; ERROR = 1;# 6;
    RX = 1 ; reset = 0; ERROR = 1;# 6;
    RX = 1 ; reset = 0; ERROR = 1;# 6;//Frame Ends
    
    RX = 1 ; reset = 0; ERROR = 1;# 6;//Intermission Begins
    RX = 1 ; reset = 0; ERROR = 1;# 6;//Intermission Ends
    
    RX = 1 ; reset = 0; ERROR = 1;# 6;//BUS IDLE
    RX = 1 ; reset = 0; ERROR = 1;# 6;
    RX = 1 ; reset = 0; ERROR = 1;# 6;
    RX = 1 ; reset = 0; ERROR = 1;# 6;
    RX = 1 ; reset = 0; ERROR = 1;# 6;
    RX = 1 ; reset = 0; ERROR = 1;# 6;
    RX = 1 ; reset = 0; ERROR = 1;# 6;
    RX = 1 ; reset = 0; ERROR = 1;# 6;//BUS IDLE ENDS  
    
    RX = 0 ; reset = 0; ERROR = 1;# 6;//SOF CAN Extended Remote
    RX = 0 ; reset = 0; ERROR = 1;# 6;//Identifier Begins
    RX = 0 ; reset = 0; ERROR = 1;# 6;
    RX = 0 ; reset = 0; ERROR = 1;# 6;
    RX = 0 ; reset = 0; ERROR = 1;# 6;
    RX = 0 ; reset = 0; ERROR = 1;# 6;
    RX = 0 ; reset = 0; ERROR = 1;# 6;
    RX = 0 ; reset = 0; ERROR = 1;# 6;
    RX = 0 ; reset = 0; ERROR = 1;# 6;
    RX = 0 ; reset = 0; ERROR = 1;# 6;
    RX = 0 ; reset = 0; ERROR = 1;# 6;
    RX = 0 ; reset = 0; ERROR = 1;# 6;//Identifier Ends
    RX = 1 ; reset = 0; ERROR = 1;# 6;//SRR
    RX = 1 ; reset = 0; ERROR = 1;# 6;//IDE
    RX = 0 ; reset = 0; ERROR = 1;# 6;//Identifier Begins
    RX = 0 ; reset = 0; ERROR = 1;# 6;
    RX = 0 ; reset = 0; ERROR = 1;# 6;
    RX = 0 ; reset = 0; ERROR = 1;# 6;
    RX = 0 ; reset = 0; ERROR = 1;# 6;
    RX = 0 ; reset = 0; ERROR = 1;# 6;
    RX = 0 ; reset = 0; ERROR = 1;# 6;
    RX = 0 ; reset = 0; ERROR = 1;# 6;
    RX = 0 ; reset = 0; ERROR = 1;# 6;
    RX = 0 ; reset = 0; ERROR = 1;# 6;
    RX = 0 ; reset = 0; ERROR = 1;# 6;
    RX = 0 ; reset = 0; ERROR = 1;# 6;
    RX = 0 ; reset = 0; ERROR = 1;# 6;
    RX = 0 ; reset = 0; ERROR = 1;# 6;
    RX = 0 ; reset = 0; ERROR = 1;# 6;
    RX = 0 ; reset = 0; ERROR = 1;# 6;
    RX = 1 ; reset = 0; ERROR = 1;# 6;
    RX = 1 ; reset = 0; ERROR = 1;# 6;//Identifier Ends
    RX = 1 ; reset = 0; ERROR = 1;# 6;//RTR
    RX = 0 ; reset = 0; ERROR = 1;# 6;//EDL
    RX = 1 ; reset = 0; ERROR = 1;# 6;//r0
    RX = 0 ; reset = 0; ERROR = 1;# 6;
    RX = 0 ; reset = 0; ERROR = 1;# 6;
    RX = 1 ; reset = 0; ERROR = 1;# 6;
    RX = 0 ; reset = 0; ERROR = 1;# 6;
    RX = 1 ; reset = 0; ERROR = 1;# 6;//CRC Begins
    RX = 1 ; reset = 0; ERROR = 1;# 6;
    RX = 1 ; reset = 0; ERROR = 1;# 6;
    RX = 1 ; reset = 0; ERROR = 1;# 6;
    RX = 1 ; reset = 0; ERROR = 1;# 6;
    RX = 1 ; reset = 0; ERROR = 1;# 6;
    RX = 1 ; reset = 0; ERROR = 1;# 6;
    RX = 1 ; reset = 0; ERROR = 1;# 6;
    RX = 1 ; reset = 0; ERROR = 1;# 6;
    RX = 1 ; reset = 0; ERROR = 1;# 6;
    RX = 1 ; reset = 0; ERROR = 1;# 6;
    RX = 1 ; reset = 0; ERROR = 1;# 6;
    RX = 1 ; reset = 0; ERROR = 1;# 6;
    RX = 1 ; reset = 0; ERROR = 1;# 6;
    RX = 1 ; reset = 0; ERROR = 1;# 6;//CRC Ends
    RX = 1 ; reset = 0; ERROR = 1;# 6;
    RX = 1 ; reset = 0; ERROR = 1;# 6;
    RX = 1 ; reset = 0; ERROR = 1;# 6;
    RX = 1 ; reset = 0; ERROR = 1;# 6;
    RX = 1 ; reset = 0; ERROR = 1;# 6;
    RX = 1 ; reset = 0; ERROR = 1;# 6;
    RX = 1 ; reset = 0; ERROR = 1;# 6;
    RX = 1 ; reset = 0; ERROR = 1;# 6;
    RX = 1 ; reset = 0; ERROR = 1;# 6;
    RX = 1 ; reset = 0; ERROR = 1;# 6;//Frame Ends
    
    RX = 1 ; reset = 0; ERROR = 1;# 6;//Intermission Begins
    RX = 1 ; reset = 0; ERROR = 1;# 6;//Intermission Ends
    
    RX = 0 ; reset = 0; ERROR = 1;# 6;//SOF CAN Extended Remote
    RX = 0 ; reset = 0; ERROR = 1;# 6;//Identifier Begins
    RX = 0 ; reset = 0; ERROR = 1;# 6;
    RX = 0 ; reset = 0; ERROR = 1;# 6;
    RX = 0 ; reset = 0; ERROR = 1;# 6;
    RX = 0 ; reset = 0; ERROR = 1;# 6;
    RX = 0 ; reset = 0; ERROR = 1;# 6;
    RX = 0 ; reset = 0; ERROR = 1;# 6;
    RX = 0 ; reset = 0; ERROR = 1;# 6;
    RX = 0 ; reset = 0; ERROR = 1;# 6;
    RX = 0 ; reset = 0; ERROR = 1;# 6;
    RX = 0 ; reset = 0; ERROR = 1;# 6;//Identifier Ends
    RX = 1 ; reset = 0; ERROR = 1;# 6;//SRR
    RX = 1 ; reset = 0; ERROR = 1;# 6;//IDE
    RX = 0 ; reset = 0; ERROR = 1;# 6;//Identifier Begins
    RX = 0 ; reset = 0; ERROR = 1;# 6;
    RX = 0 ; reset = 0; ERROR = 1;# 6;
    RX = 0 ; reset = 0; ERROR = 1;# 6;
    RX = 0 ; reset = 0; ERROR = 1;# 6;
    RX = 0 ; reset = 0; ERROR = 1;# 6;
    RX = 0 ; reset = 0; ERROR = 1;# 6;
    RX = 0 ; reset = 0; ERROR = 1;# 6;
    RX = 0 ; reset = 0; ERROR = 1;# 6;
    RX = 0 ; reset = 0; ERROR = 1;# 6;
    RX = 0 ; reset = 0; ERROR = 1;# 6;
    RX = 0 ; reset = 0; ERROR = 1;# 6;
    RX = 0 ; reset = 0; ERROR = 1;# 6;
    RX = 0 ; reset = 0; ERROR = 1;# 6;
    RX = 0 ; reset = 0; ERROR = 1;# 6;
    RX = 1 ; reset = 0; ERROR = 1;# 6;
    RX = 0 ; reset = 0; ERROR = 1;# 6;
    RX = 0 ; reset = 0; ERROR = 1;# 6;//Identifier Ends
    RX = 1 ; reset = 0; ERROR = 1;# 6;//RTR
    RX = 0 ; reset = 0; ERROR = 1;# 6;//EDL
    RX = 1 ; reset = 0; ERROR = 1;# 6;//r0
    RX = 0 ; reset = 0; ERROR = 1;# 6;
    RX = 0 ; reset = 0; ERROR = 1;# 6;
    RX = 1 ; reset = 0; ERROR = 1;# 6;
    RX = 0 ; reset = 0; ERROR = 1;# 6;
    RX = 1 ; reset = 0; ERROR = 1;# 6;//CRC Begins
    RX = 1 ; reset = 0; ERROR = 1;# 6;
    RX = 1 ; reset = 0; ERROR = 1;# 6;
    RX = 1 ; reset = 0; ERROR = 1;# 6;
    RX = 1 ; reset = 0; ERROR = 1;# 6;
    RX = 1 ; reset = 0; ERROR = 1;# 6;
    RX = 1 ; reset = 0; ERROR = 1;# 6;
    RX = 1 ; reset = 0; ERROR = 1;# 6;
    RX = 1 ; reset = 0; ERROR = 1;# 6;
    RX = 1 ; reset = 0; ERROR = 1;# 6;
    RX = 1 ; reset = 0; ERROR = 1;# 6;
    RX = 1 ; reset = 0; ERROR = 1;# 6;
    RX = 1 ; reset = 0; ERROR = 1;# 6;
    RX = 1 ; reset = 0; ERROR = 1;# 6;
    RX = 1 ; reset = 0; ERROR = 1;# 6;//CRC Ends
    RX = 1 ; reset = 0; ERROR = 1;# 6;
    RX = 1 ; reset = 0; ERROR = 1;# 6;
    RX = 1 ; reset = 0; ERROR = 1;# 6;
    RX = 1 ; reset = 0; ERROR = 1;# 6;
    RX = 1 ; reset = 0; ERROR = 1;# 6;
    RX = 1 ; reset = 0; ERROR = 1;# 6;
    RX = 1 ; reset = 0; ERROR = 1;# 6;
    RX = 0 ; reset = 0; ERROR = 1;# 6;//Erro de EOF
    
    RX = 0 ; reset = 0; ERROR = 0;# 6;//Error Frame
    RX = 0 ; reset = 0; ERROR = 1;# 6;
    RX = 0 ; reset = 0; ERROR = 1;# 6;
    RX = 0 ; reset = 0; ERROR = 1;# 6;
    RX = 0 ; reset = 0; ERROR = 1;# 6;
    RX = 0 ; reset = 0; ERROR = 1;# 6;
    RX = 0 ; reset = 0; ERROR = 1;# 6;//Superposition
    RX = 0 ; reset = 0; ERROR = 1;# 6;
    RX = 0 ; reset = 0; ERROR = 1;# 6;
    RX = 1 ; reset = 0; ERROR = 1;# 6;//Delimiter
    RX = 1 ; reset = 0; ERROR = 1;# 6;
    RX = 1 ; reset = 0; ERROR = 1;# 6;
    RX = 1 ; reset = 0; ERROR = 1;# 6;
    RX = 0 ; reset = 0; ERROR = 1;# 6;
    RX = 1 ; reset = 0; ERROR = 1;# 6;//Recomeço do Delimiter
    RX = 1 ; reset = 0; ERROR = 1;# 6;
    RX = 1 ; reset = 0; ERROR = 1;# 6;
    RX = 1 ; reset = 0; ERROR = 1;# 6;
    RX = 1 ; reset = 0; ERROR = 1;# 6;
    RX = 1 ; reset = 0; ERROR = 1;# 6;
    RX = 1 ; reset = 0; ERROR = 1;# 6;
    RX = 1 ; reset = 0; ERROR = 1;# 6;//Frame Ends
    
    RX = 1 ; reset = 0; ERROR = 1;# 6;//Intermission
    
    RX = 0 ; reset = 0; ERROR = 1;# 6;//Overload Frame
    RX = 0 ; reset = 0; ERROR = 1;# 6;
    RX = 0 ; reset = 0; ERROR = 1;# 6;
    RX = 0 ; reset = 0; ERROR = 1;# 6;
    RX = 0 ; reset = 0; ERROR = 1;# 6;
    RX = 0 ; reset = 0; ERROR = 1;# 6;
    RX = 0 ; reset = 0; ERROR = 1;# 6;//Superposition
    RX = 0 ; reset = 0; ERROR = 1;# 6;
    RX = 0 ; reset = 0; ERROR = 1;# 6;
    RX = 1 ; reset = 0; ERROR = 1;# 6;//Delimiter
    RX = 1 ; reset = 0; ERROR = 1;# 6;
    RX = 1 ; reset = 0; ERROR = 1;# 6;
    RX = 1 ; reset = 0; ERROR = 1;# 6;
    RX = 0 ; reset = 0; ERROR = 1;# 6;
    RX = 1 ; reset = 0; ERROR = 1;# 6;//Recomeço do Delimiter
    RX = 1 ; reset = 0; ERROR = 1;# 6;
    RX = 1 ; reset = 0; ERROR = 1;# 6;
    RX = 1 ; reset = 0; ERROR = 1;# 6;
    RX = 1 ; reset = 0; ERROR = 1;# 6;
    RX = 1 ; reset = 0; ERROR = 1;# 6;
    RX = 1 ; reset = 0; ERROR = 1;# 6;
    RX = 1 ; reset = 0; ERROR = 1;# 6;//Frame Ends
    
    RX = 1 ; reset = 0; ERROR = 1;# 6;//Intermission Begins
    RX = 1 ; reset = 0; ERROR = 1;# 6;//Intermission Ends
    
    RX = 0 ; reset = 0; ERROR = 1;# 6;//SOF CAN FD Base Frame
    RX = 0 ; reset = 0; ERROR = 1;# 6;//Identifier Begins
    RX = 0 ; reset = 0; ERROR = 1;# 6;
    RX = 0 ; reset = 0; ERROR = 1;# 6;
    RX = 0 ; reset = 0; ERROR = 1;# 6;
    RX = 0 ; reset = 0; ERROR = 1;# 6;
    RX = 0 ; reset = 0; ERROR = 1;# 6;
    RX = 0 ; reset = 0; ERROR = 1;# 6;
    RX = 0 ; reset = 0; ERROR = 1;# 6;
    RX = 1 ; reset = 0; ERROR = 1;# 6;
    RX = 0 ; reset = 0; ERROR = 1;# 6;
    RX = 1 ; reset = 0; ERROR = 1;# 6;//Identifier Ends
    RX = 0 ; reset = 0; ERROR = 1;# 6;//RTR
    RX = 0 ; reset = 0; ERROR = 1;# 6;//IDE
    RX = 1 ; reset = 0; ERROR = 1;# 6;//EDL
    RX = 0 ; reset = 0; ERROR = 1;# 6;//r0
    RX = 0 ; reset = 0; ERROR = 1;# 6;//BRS
    RX = 1 ; reset = 0; ERROR = 1;# 6;//ESI
    RX = 0 ; reset = 0; ERROR = 1;# 6;
    RX = 0 ; reset = 0; ERROR = 1;# 6;
    RX = 1 ; reset = 0; ERROR = 1;# 6;
    RX = 0 ; reset = 0; ERROR = 1;# 6;
    RX = 0 ; reset = 0; ERROR = 1;# 6;//DATA Begins
    RX = 0 ; reset = 0; ERROR = 1;# 6;
    RX = 0 ; reset = 0; ERROR = 1;# 6;
    RX = 1 ; reset = 0; ERROR = 1;# 6;
    RX = 1 ; reset = 0; ERROR = 1;# 6;
    RX = 0 ; reset = 0; ERROR = 1;# 6;
    RX = 1 ; reset = 0; ERROR = 1;# 6;
    RX = 0 ; reset = 0; ERROR = 1;# 6;
    RX = 1 ; reset = 0; ERROR = 1;# 6;
    RX = 0 ; reset = 0; ERROR = 1;# 6;
    RX = 1 ; reset = 0; ERROR = 1;# 6;
    RX = 1 ; reset = 0; ERROR = 1;# 6;
    RX = 1 ; reset = 0; ERROR = 1;# 6;
    RX = 1 ; reset = 0; ERROR = 1;# 6;
    RX = 0 ; reset = 0; ERROR = 1;# 6;
    RX = 0 ; reset = 0; ERROR = 1;# 6;//Data Ends
    RX = 1 ; reset = 0; ERROR = 1;# 6;//CRC Begins
    RX = 1 ; reset = 0; ERROR = 1;# 6;
    RX = 1 ; reset = 0; ERROR = 1;# 6;
    RX = 1 ; reset = 0; ERROR = 1;# 6;
    RX = 1 ; reset = 0; ERROR = 1;# 6;
    RX = 1 ; reset = 0; ERROR = 1;# 6;
    RX = 1 ; reset = 0; ERROR = 1;# 6;
    RX = 1 ; reset = 0; ERROR = 1;# 6;
    RX = 1 ; reset = 0; ERROR = 1;# 6;
    RX = 1 ; reset = 0; ERROR = 1;# 6;
    RX = 1 ; reset = 0; ERROR = 1;# 6;
    RX = 1 ; reset = 0; ERROR = 1;# 6;
    RX = 1 ; reset = 0; ERROR = 1;# 6;
    RX = 1 ; reset = 0; ERROR = 1;# 6;
    RX = 1 ; reset = 0; ERROR = 1;# 6;//CRC Ends
    RX = 1 ; reset = 0; ERROR = 1;# 6;
    RX = 1 ; reset = 0; ERROR = 1;# 6;
    RX = 1 ; reset = 0; ERROR = 1;# 6;
    RX = 1 ; reset = 0; ERROR = 1;# 6;
    RX = 1 ; reset = 0; ERROR = 1;# 6;
    RX = 1 ; reset = 0; ERROR = 1;# 6;
    RX = 1 ; reset = 0; ERROR = 1;# 6;
    RX = 1 ; reset = 0; ERROR = 1;# 6;
    RX = 1 ; reset = 0; ERROR = 1;# 6;
    RX = 1 ; reset = 0; ERROR = 1;# 6;//Frame Ends
    
    RX = 1 ; reset = 0; ERROR = 1;# 6;//Intermission Begins
    RX = 1 ; reset = 0; ERROR = 1;# 6;//Intermission Ends
    
    RX = 1 ; reset = 0; ERROR = 1;# 6;//BUS IDLE
    
    RX = 0 ; reset = 0; ERROR = 1;# 6;//CAN FD Extended Frame
    RX = 0 ; reset = 0; ERROR = 1;# 6;//Identifier Begins
    RX = 0 ; reset = 0; ERROR = 1;# 6;
    RX = 0 ; reset = 0; ERROR = 1;# 6;
    RX = 0 ; reset = 0; ERROR = 1;# 6;
    RX = 0 ; reset = 0; ERROR = 1;# 6;
    RX = 0 ; reset = 0; ERROR = 1;# 6;
    RX = 0 ; reset = 0; ERROR = 1;# 6;
    RX = 0 ; reset = 0; ERROR = 1;# 6;
    RX = 0 ; reset = 0; ERROR = 1;# 6;
    RX = 0 ; reset = 0; ERROR = 1;# 6;
    RX = 0 ; reset = 0; ERROR = 1;# 6;//Identifier Ends
    RX = 1 ; reset = 0; ERROR = 1;# 6;//SRR
    RX = 1 ; reset = 0; ERROR = 1;# 6;//IDE
    RX = 0 ; reset = 0; ERROR = 1;# 6;//Identifier Begins
    RX = 0 ; reset = 0; ERROR = 1;# 6;
    RX = 0 ; reset = 0; ERROR = 1;# 6;
    RX = 0 ; reset = 0; ERROR = 1;# 6;
    RX = 0 ; reset = 0; ERROR = 1;# 6;
    RX = 0 ; reset = 0; ERROR = 1;# 6;
    RX = 0 ; reset = 0; ERROR = 1;# 6;
    RX = 0 ; reset = 0; ERROR = 1;# 6;
    RX = 0 ; reset = 0; ERROR = 1;# 6;
    RX = 0 ; reset = 0; ERROR = 1;# 6;
    RX = 0 ; reset = 0; ERROR = 1;# 6;
    RX = 0 ; reset = 0; ERROR = 1;# 6;
    RX = 0 ; reset = 0; ERROR = 1;# 6;
    RX = 0 ; reset = 0; ERROR = 1;# 6;
    RX = 0 ; reset = 0; ERROR = 1;# 6;
    RX = 1 ; reset = 0; ERROR = 1;# 6;
    RX = 1 ; reset = 0; ERROR = 1;# 6;
    RX = 0 ; reset = 0; ERROR = 1;# 6;//Identifier Ends
    RX = 0 ; reset = 0; ERROR = 1;# 6;//RTR
    RX = 1 ; reset = 0; ERROR = 1;# 6;//EDL
    RX = 0 ; reset = 0; ERROR = 1;# 6;//r0
    RX = 0 ; reset = 0; ERROR = 1;# 6;//BRS
    RX = 0 ; reset = 0; ERROR = 1;# 6;//ESI
    RX = 0 ; reset = 0; ERROR = 1;# 6;
    RX = 0 ; reset = 0; ERROR = 1;# 6;
    RX = 1 ; reset = 0; ERROR = 1;# 6;
    RX = 0 ; reset = 0; ERROR = 1;# 6;
    RX = 0 ; reset = 0; ERROR = 1;# 6;//DATA Begins
    RX = 0 ; reset = 0; ERROR = 1;# 6;
    RX = 0 ; reset = 0; ERROR = 1;# 6;
    RX = 1 ; reset = 0; ERROR = 1;# 6;
    RX = 1 ; reset = 0; ERROR = 1;# 6;
    RX = 0 ; reset = 0; ERROR = 1;# 6;
    RX = 1 ; reset = 0; ERROR = 1;# 6;
    RX = 0 ; reset = 0; ERROR = 1;# 6;
    RX = 1 ; reset = 0; ERROR = 1;# 6;
    RX = 0 ; reset = 0; ERROR = 1;# 6;
    RX = 1 ; reset = 0; ERROR = 1;# 6;
    RX = 1 ; reset = 0; ERROR = 1;# 6;
    RX = 1 ; reset = 0; ERROR = 1;# 6;
    RX = 1 ; reset = 0; ERROR = 1;# 6;
    RX = 0 ; reset = 0; ERROR = 1;# 6;
    RX = 0 ; reset = 0; ERROR = 1;# 6;//Data Ends
    RX = 1 ; reset = 0; ERROR = 1;# 6;//CRC Begins
    RX = 1 ; reset = 0; ERROR = 1;# 6;
    RX = 1 ; reset = 0; ERROR = 1;# 6;
    RX = 1 ; reset = 0; ERROR = 1;# 6;
    RX = 1 ; reset = 0; ERROR = 1;# 6;
    RX = 1 ; reset = 0; ERROR = 1;# 6;
    RX = 1 ; reset = 0; ERROR = 1;# 6;
    RX = 1 ; reset = 0; ERROR = 1;# 6;
    RX = 1 ; reset = 0; ERROR = 1;# 6;
    RX = 1 ; reset = 0; ERROR = 1;# 6;
    RX = 1 ; reset = 0; ERROR = 1;# 6;
    RX = 1 ; reset = 0; ERROR = 1;# 6;
    RX = 1 ; reset = 0; ERROR = 1;# 6;
    RX = 1 ; reset = 0; ERROR = 1;# 6;
    RX = 1 ; reset = 0; ERROR = 1;# 6;//CRC Ends
    RX = 1 ; reset = 0; ERROR = 1;# 6;
    RX = 1 ; reset = 0; ERROR = 1;# 6;
    RX = 1 ; reset = 0; ERROR = 1;# 6;
    RX = 1 ; reset = 0; ERROR = 1;# 6;
    RX = 1 ; reset = 0; ERROR = 1;# 6;
    RX = 1 ; reset = 0; ERROR = 1;# 6;
    RX = 1 ; reset = 0; ERROR = 1;# 6;
    RX = 1 ; reset = 0; ERROR = 1;# 6;
    RX = 1 ; reset = 0; ERROR = 1;# 6;
    RX = 1 ; reset = 0; ERROR = 1;# 6;//Frame Ends
    
    RX = 1 ; reset = 0; ERROR = 1;# 6;//Intermission Begins
    RX = 1 ; reset = 0; ERROR = 1;# 6;//Intermission Ends
    
    RX = 1 ; reset = 0; ERROR = 1;# 6;//BUS IDLE
    RX = 1 ; reset = 0; ERROR = 1;# 6;//BUS IDLE
    RX = 1 ; reset = 0; ERROR = 1;# 6;//BUS IDLE
    RX = 1 ; reset = 0; ERROR = 1;# 6;//BUS IDLE
    RX = 1 ; reset = 0; ERROR = 1;# 6;//BUS IDLE
    RX = 1 ; reset = 0; ERROR = 1;# 6;//BUS IDLE
    RX = 1 ; reset = 0; ERROR = 1;# 6;//BUS IDLE
    RX = 1 ; reset = 0; ERROR = 1;# 6;//BUS IDLE
    
    RX = 0 ; reset = 0; ERROR = 1;# 6;//CAN FD Extended Frame
    RX = 0 ; reset = 0; ERROR = 1;# 6;//Identifier Begins
    RX = 0 ; reset = 0; ERROR = 1;# 6;
    RX = 0 ; reset = 0; ERROR = 1;# 6;
    RX = 0 ; reset = 0; ERROR = 1;# 6;
    RX = 0 ; reset = 0; ERROR = 1;# 6;
    RX = 0 ; reset = 0; ERROR = 1;# 6;
    RX = 0 ; reset = 0; ERROR = 1;# 6;
    RX = 0 ; reset = 0; ERROR = 1;# 6;
    RX = 0 ; reset = 0; ERROR = 1;# 6;
    RX = 0 ; reset = 0; ERROR = 1;# 6;
    RX = 0 ; reset = 0; ERROR = 1;# 6;//Identifier Ends
    RX = 1 ; reset = 0; ERROR = 1;# 6;//SRR
    RX = 1 ; reset = 0; ERROR = 1;# 6;//IDE
    RX = 0 ; reset = 0; ERROR = 1;# 6;//Identifier Begins
    RX = 0 ; reset = 0; ERROR = 1;# 6;
    RX = 0 ; reset = 0; ERROR = 1;# 6;
    RX = 0 ; reset = 0; ERROR = 1;# 6;
    RX = 0 ; reset = 0; ERROR = 1;# 6;
    RX = 0 ; reset = 0; ERROR = 1;# 6;
    RX = 0 ; reset = 0; ERROR = 1;# 6;
    RX = 0 ; reset = 0; ERROR = 1;# 6;
    RX = 0 ; reset = 0; ERROR = 1;# 6;
    RX = 0 ; reset = 0; ERROR = 1;# 6;
    RX = 0 ; reset = 0; ERROR = 1;# 6;
    RX = 0 ; reset = 0; ERROR = 1;# 6;
    RX = 0 ; reset = 0; ERROR = 1;# 6;
    RX = 0 ; reset = 0; ERROR = 1;# 6;
    RX = 0 ; reset = 0; ERROR = 1;# 6;
    RX = 1 ; reset = 0; ERROR = 1;# 6;
    RX = 1 ; reset = 0; ERROR = 1;# 6;
    RX = 1 ; reset = 0; ERROR = 1;# 6;//Identifier Ends
    RX = 0 ; reset = 0; ERROR = 1;# 6;//RTR
    RX = 1 ; reset = 0; ERROR = 1;# 6;//EDL
    RX = 0 ; reset = 0; ERROR = 1;# 6;//r0
    RX = 0 ; reset = 0; ERROR = 1;# 6;//BRS
    RX = 0 ; reset = 0; ERROR = 1;# 6;//ESI
    RX = 0 ; reset = 0; ERROR = 1;# 6;
    RX = 0 ; reset = 0; ERROR = 1;# 6;
    RX = 1 ; reset = 0; ERROR = 1;# 6;
    RX = 0 ; reset = 0; ERROR = 1;# 6;
    RX = 0 ; reset = 0; ERROR = 1;# 6;//DATA Begins
    RX = 0 ; reset = 0; ERROR = 1;# 6;
    RX = 0 ; reset = 0; ERROR = 1;# 6;
    RX = 1 ; reset = 0; ERROR = 1;# 6;
    RX = 1 ; reset = 0; ERROR = 1;# 6;
    RX = 0 ; reset = 0; ERROR = 1;# 6;
    RX = 1 ; reset = 0; ERROR = 1;# 6;
    RX = 0 ; reset = 0; ERROR = 1;# 6;
    RX = 1 ; reset = 0; ERROR = 1;# 6;
    RX = 0 ; reset = 0; ERROR = 1;# 6;
    RX = 1 ; reset = 0; ERROR = 1;# 6;
    RX = 1 ; reset = 0; ERROR = 1;# 6;
    RX = 1 ; reset = 0; ERROR = 1;# 6;
    RX = 1 ; reset = 0; ERROR = 1;# 6;
    RX = 0 ; reset = 0; ERROR = 1;# 6;
    RX = 0 ; reset = 0; ERROR = 1;# 6;//Data Ends
    RX = 1 ; reset = 0; ERROR = 1;# 6;//CRC Begins
    RX = 1 ; reset = 0; ERROR = 1;# 6;
    RX = 1 ; reset = 0; ERROR = 1;# 6;
    RX = 1 ; reset = 0; ERROR = 1;# 6;
    RX = 1 ; reset = 0; ERROR = 1;# 6;
    RX = 1 ; reset = 0; ERROR = 1;# 6;
    RX = 1 ; reset = 0; ERROR = 1;# 6;
    RX = 1 ; reset = 0; ERROR = 1;# 6;
    RX = 1 ; reset = 0; ERROR = 1;# 6;
    RX = 1 ; reset = 0; ERROR = 1;# 6;
    RX = 1 ; reset = 0; ERROR = 1;# 6;
    RX = 1 ; reset = 0; ERROR = 1;# 6;
    RX = 1 ; reset = 0; ERROR = 1;# 6;
    RX = 1 ; reset = 0; ERROR = 1;# 6;
    RX = 1 ; reset = 0; ERROR = 1;# 6;//CRC Ends
    RX = 1 ; reset = 0; ERROR = 1;# 6;
    RX = 1 ; reset = 0; ERROR = 1;# 6;
    RX = 0 ; reset = 0; ERROR = 1;# 6;//Erro de ACK Delimiter
    
    RX = 0 ; reset = 0; ERROR = 0;# 6;//Error Frame
    RX = 0 ; reset = 0; ERROR = 1;# 6;
    RX = 0 ; reset = 0; ERROR = 1;# 6;
    RX = 0 ; reset = 0; ERROR = 1;# 6;
    RX = 0 ; reset = 0; ERROR = 1;# 6;
    RX = 0 ; reset = 0; ERROR = 1;# 6;
    RX = 0 ; reset = 0; ERROR = 1;# 6;//Superposition
    RX = 0 ; reset = 0; ERROR = 1;# 6;
    RX = 0 ; reset = 0; ERROR = 1;# 6;
    RX = 0 ; reset = 0; ERROR = 1;# 6;
    RX = 0 ; reset = 0; ERROR = 1;# 6;
    RX = 0 ; reset = 0; ERROR = 1;# 6;
    RX = 1 ; reset = 0; ERROR = 1;# 6;//Delimiter
    RX = 1 ; reset = 0; ERROR = 1;# 6;
    RX = 1 ; reset = 0; ERROR = 1;# 6;
    RX = 1 ; reset = 0; ERROR = 1;# 6;
    RX = 1 ; reset = 0; ERROR = 1;# 6;
    RX = 1 ; reset = 0; ERROR = 1;# 6;
    RX = 1 ; reset = 0; ERROR = 1;# 6;
    RX = 1 ; reset = 0; ERROR = 1;# 6;//Frame Ends
    
    RX = 0 ; reset = 0; ERROR = 1;# 6;//Overload Frame
    RX = 0 ; reset = 0; ERROR = 1;# 6;
    RX = 0 ; reset = 0; ERROR = 1;# 6;
    RX = 0 ; reset = 0; ERROR = 1;# 6;
    RX = 0 ; reset = 0; ERROR = 1;# 6;
    RX = 0 ; reset = 0; ERROR = 1;# 6;
    RX = 0 ; reset = 0; ERROR = 1;# 6;//Superposition
    RX = 0 ; reset = 0; ERROR = 1;# 6;
    RX = 0 ; reset = 0; ERROR = 1;# 6;
    RX = 1 ; reset = 0; ERROR = 1;# 6;//Delimiter
    RX = 1 ; reset = 0; ERROR = 1;# 6;
    RX = 1 ; reset = 0; ERROR = 1;# 6;
    RX = 1 ; reset = 0; ERROR = 1;# 6;
    RX = 0 ; reset = 0; ERROR = 1;# 6;
    RX = 1 ; reset = 0; ERROR = 1;# 6;//Recomeço do Delimiter
    RX = 1 ; reset = 0; ERROR = 1;# 6;
    RX = 1 ; reset = 0; ERROR = 1;# 6;
    RX = 1 ; reset = 0; ERROR = 1;# 6;
    RX = 1 ; reset = 0; ERROR = 1;# 6;
    RX = 1 ; reset = 0; ERROR = 1;# 6;
    RX = 1 ; reset = 0; ERROR = 1;# 6;
    RX = 1 ; reset = 0; ERROR = 1;# 6;//Frame Ends
    
    RX = 1 ; reset = 0; ERROR = 1;# 6;//Intermission Begins
    RX = 1 ; reset = 0; ERROR = 1;# 6;//Intermission Ends
    
    RX = 1 ; reset = 0; ERROR = 1;# 6;//BUS IDLE
    RX = 1 ; reset = 0; ERROR = 1;# 6;//BUS IDLE
    RX = 1 ; reset = 0; ERROR = 1;# 6;//BUS IDLE
    RX = 1 ; reset = 0; ERROR = 1;# 6;//BUS IDLE
    RX = 1 ; reset = 0; ERROR = 1;# 6;//BUS IDLE
    RX = 1 ; reset = 0; ERROR = 1;# 6;//BUS IDLE
    RX = 1 ; reset = 0; ERROR = 1;# 6;//BUS IDLE
    RX = 1 ; reset = 0; ERROR = 1;# 6;//BUS IDLE
    
    RX = 0 ; reset = 0; ERROR = 1;# 6;//CAN FD Extended Frame
    RX = 0 ; reset = 0; ERROR = 1;# 6;//Identifier Begins
    RX = 0 ; reset = 0; ERROR = 1;# 6;
    RX = 0 ; reset = 0; ERROR = 1;# 6;
    RX = 0 ; reset = 0; ERROR = 1;# 6;
    RX = 0 ; reset = 0; ERROR = 1;# 6;
    RX = 0 ; reset = 0; ERROR = 1;# 6;
    RX = 0 ; reset = 0; ERROR = 1;# 6;
    RX = 0 ; reset = 0; ERROR = 1;# 6;
    RX = 0 ; reset = 0; ERROR = 1;# 6;
    RX = 0 ; reset = 0; ERROR = 1;# 6;
    RX = 0 ; reset = 0; ERROR = 1;# 6;//Identifier Ends
    RX = 1 ; reset = 0; ERROR = 1;# 6;//SRR
    RX = 1 ; reset = 0; ERROR = 1;# 6;//IDE
    RX = 0 ; reset = 0; ERROR = 1;# 6;//Identifier Begins
    RX = 0 ; reset = 0; ERROR = 1;# 6;
    RX = 0 ; reset = 0; ERROR = 1;# 6;
    RX = 0 ; reset = 0; ERROR = 1;# 6;
    RX = 0 ; reset = 0; ERROR = 1;# 6;
    RX = 0 ; reset = 0; ERROR = 1;# 6;
    RX = 0 ; reset = 0; ERROR = 1;# 6;
    RX = 0 ; reset = 0; ERROR = 1;# 6;
    RX = 0 ; reset = 0; ERROR = 1;# 6;
    RX = 0 ; reset = 0; ERROR = 1;# 6;
    RX = 0 ; reset = 0; ERROR = 1;# 6;
    RX = 0 ; reset = 0; ERROR = 1;# 6;
    RX = 0 ; reset = 0; ERROR = 1;# 6;
    RX = 0 ; reset = 0; ERROR = 1;# 6;
    RX = 1 ; reset = 0; ERROR = 1;# 6;
    RX = 0 ; reset = 0; ERROR = 1;# 6;
    RX = 0 ; reset = 0; ERROR = 1;# 6;
    RX = 0 ; reset = 0; ERROR = 1;# 6;//Identifier Ends
    RX = 0 ; reset = 0; ERROR = 1;# 6;//RTR
    RX = 1 ; reset = 0; ERROR = 1;# 6;//EDL
    RX = 0 ; reset = 0; ERROR = 1;# 6;//r0
    RX = 0 ; reset = 0; ERROR = 1;# 6;//BRS
    RX = 0 ; reset = 0; ERROR = 1;# 6;//ESI
    RX = 0 ; reset = 0; ERROR = 1;# 6;
    RX = 0 ; reset = 0; ERROR = 1;# 6;
    RX = 1 ; reset = 0; ERROR = 1;# 6;
    RX = 0 ; reset = 0; ERROR = 1;# 6;
    RX = 0 ; reset = 0; ERROR = 1;# 6;//DATA Begins
    RX = 0 ; reset = 0; ERROR = 1;# 6;
    RX = 0 ; reset = 0; ERROR = 1;# 6;
    RX = 1 ; reset = 0; ERROR = 1;# 6;
    RX = 1 ; reset = 0; ERROR = 1;# 6;
    RX = 0 ; reset = 0; ERROR = 1;# 6;
    RX = 1 ; reset = 0; ERROR = 1;# 6;
    RX = 0 ; reset = 0; ERROR = 1;# 6;
    RX = 1 ; reset = 0; ERROR = 1;# 6;
    RX = 0 ; reset = 0; ERROR = 1;# 6;
    RX = 1 ; reset = 0; ERROR = 1;# 6;
    RX = 1 ; reset = 0; ERROR = 1;# 6;
    RX = 1 ; reset = 0; ERROR = 1;# 6;
    RX = 1 ; reset = 0; ERROR = 1;# 6;
    RX = 0 ; reset = 0; ERROR = 1;# 6;
    RX = 0 ; reset = 0; ERROR = 1;# 6;//Data Ends
    RX = 1 ; reset = 0; ERROR = 1;# 6;//CRC Begins
    RX = 1 ; reset = 0; ERROR = 1;# 6;
    RX = 1 ; reset = 0; ERROR = 1;# 6;
    RX = 1 ; reset = 0; ERROR = 1;# 6;
    RX = 1 ; reset = 0; ERROR = 1;# 6;
    RX = 1 ; reset = 0; ERROR = 1;# 6;
    RX = 1 ; reset = 0; ERROR = 1;# 6;
    RX = 1 ; reset = 0; ERROR = 1;# 6;
    RX = 1 ; reset = 0; ERROR = 1;# 6;
    RX = 1 ; reset = 0; ERROR = 1;# 6;
    RX = 1 ; reset = 0; ERROR = 1;# 6;
    RX = 1 ; reset = 0; ERROR = 1;# 6;
    RX = 1 ; reset = 0; ERROR = 1;# 6;
    RX = 1 ; reset = 0; ERROR = 1;# 6;
    RX = 1 ; reset = 0; ERROR = 1;# 6;//CRC Ends
    RX = 0 ; reset = 0; ERROR = 1;# 6;//Erro de CRC Delimiter
    
    RX = 0 ;  reset = 0; ERROR = 0;# 6;//Error Frame
    RX = 0 ; reset = 0; ERROR = 1;# 6;
    RX = 0 ; reset = 0; ERROR = 1;# 6;
    RX = 0 ; reset = 0; ERROR = 1;# 6;
    RX = 0 ; reset = 0; ERROR = 1;# 6;
    RX = 0 ; reset = 0; ERROR = 1;# 6;
    RX = 1 ; reset = 0; ERROR = 1;# 6;//Delimiter
    RX = 1 ; reset = 0; ERROR = 1;# 6;
    RX = 1 ; reset = 0; ERROR = 1;# 6;
    RX = 1 ; reset = 0; ERROR = 1;# 6;
    RX = 1 ; reset = 0; ERROR = 1;# 6;
    RX = 1 ; reset = 0; ERROR = 1;# 6;
    RX = 1 ; reset = 0; ERROR = 1;# 6;
    RX = 1 ; reset = 0; ERROR = 1;# 6;//Frame Ends
    
    $stop;
  
  end
endmodule
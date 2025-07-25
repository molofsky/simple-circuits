/* Three-input NAND gate that outputs the boolean function ZN = ~(A1 & A2 & A3)
*
* @author Adrian Molofsky
* @version 11/30/23 
*/

module NAND3 (A1, A2, A3, ZN);
   input A1;
   input A2;
   input A3;
   wire i_8, i_9;
   output ZN;

   not(ZN, i_8);
   and(i_8, i_9, A3);
   and(i_9, A1, A2);

   specify
     (A1 => ZN) = (0.1, 0.1);
     (A2 => ZN) = (0.1, 0.1);
     (A3 => ZN) = (0.1, 0.1);
   endspecify
  
endmodule

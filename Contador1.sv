module Contador1(input logic clk, reset, output logic [3:0] saida);
	logic posicao;
	
	always @(posedge clk)
		begin
			if (reset)
				begin
					saida <= 4'd0;
					posicao <= 1'b0;
				end
			else
				begin						
					if (posicao == 1'b0)
						if (saida == 4'd15)
							begin
								posicao <= 1'b1;
								saida <= saida - 4'd1;
							end
						else
							saida <= saida + 4'd1;
							
							
					else if (posicao == 1'b1)
						if (saida == 4'd0)
							begin
								posicao <= 1'b0;
								saida = saida + 1'd1;
							end
						else
							saida <= saida - 4'd1;
				end
			end

endmodule

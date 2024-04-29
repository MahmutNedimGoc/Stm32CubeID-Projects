unsigned int a;
unsigned int b,b1,b2;
unsigned char b3,b4;
int *mem_loc , *mem_loc2, *mem_loc3;

int main(void)
{
	int shift = 0;
	int i = 0;
	int j = 0;
	mem_loc = (int *) 0x20000040;

	*mem_loc = 0xF0F1F2F3;

	a =*mem_loc;
	b = a;
	for(int k = 0 ; k <4; k++){
		shift += 8;
		if(b & 0x01){
			b1 += b&0xff;
			i++;
		}else{
			b2 += b&0xff;
			j++;
		}
		b = a>>shift;
	}

	shift = 0;

	mem_loc +=1;

	*mem_loc = 0xF4F5F6F7;
	a =*mem_loc;
		b = a;
		for(int k = 0 ; k <4; k++){
			shift += 8;
			if(b & 0x01){
				b1 += b&0xff;
				i++;
			}else{
				b2 += b&0xff;
				j++;
			}
			b = a>>shift;
		}
		shift = 0;

		mem_loc +=1;

		*mem_loc = 0xF8F9FAFB;
		a =*mem_loc;
		b = a;
		for(int k = 0 ; k <4; k++){
			shift += 8;
			if(b & 0x01){
				b1 += b&0xff;
				i++;
			}else{
				b2 += b&0xff;
			j++;
			}
			b = a>>shift;
         }
		shift = 0;

		mem_loc +=1;

		*mem_loc = 0xFcFdFeFf;
		a =*mem_loc;
		b = a;
		for(int k = 0 ; k <4; k++){
			shift += 8;
			if(b & 0x01){
				b1 += b&0xff;
				i++;
			}else{
				b2 += b&0xff;
			j++;
			}
			b = a>>shift;
         }

		if(i > 0){
			b3 = b1/i;
		}else{
			b3 = b1;
		}
		if(j > 0){
			b4 = b2 / j;
		}else{
			b4 = b2;
		}
		mem_loc2 = (int *) 0x20000050;
		*mem_loc2 = b3;
		mem_loc3 = (int *) 0x20000060;
		*mem_loc3 = b4;

}

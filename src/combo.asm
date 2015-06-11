; Holala on met tout le KKrenel avec son bootloader lô-dedon.

%include "boot\bootloader.asm"
%include "krenel\krenel.asm"

times 5120-($-$$) db 0
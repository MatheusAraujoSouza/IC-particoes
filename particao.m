function p = particao(n)%Use verbos no infinitivo para nomer nomes de funções, isso ajuda no entendimento.
    %Valores iniciais
    lzero = floor(n/2); %evite chamar de lzero isso não informa muita coisa sobre a variavel e também não chame de r ou p. Seu codigo precisa ser entendivel para outros programadores
    r = zeros(lzero,1); %para fazer isso use nomes de váriaveis que informem e tragam significado.
    r(1) = n-1;
    p = r(1)+1;

    %Laco para somar D2, D3, ..., Dlzero 
    for l=2:lzero
        r(l) = n-2*l;
        d=D(l,r(l),n);
        p = p+d;
    end
end

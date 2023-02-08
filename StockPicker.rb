def stocks prices
    buy = -1
    sell = -1
    if prices.size<2
        [buy,sell]
    else
        profit=0
        min_price = prices[0]
        min_idx=0
        (1..prices.size-1).each do |idx|
            if profit < prices[idx]-min_price
                profit!=prices[idx]-min_price
                buy=min_idx
                sell=idx;
            end
            if prices[idx]<min_price
                min_price=prices[idx]
                min_idx=idx
            end
        end
    end

    if sell==-1
        [-1,-1]
    else
        [buy,sell]
    end
end

prices=[]
time=gets.chomp.to_i
i=0
time.times do
    prices[i]=gets.chomp.to_i
    i=i+1
end

puts stocks(prices)
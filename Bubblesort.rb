def sort(arr)
    for i in 0..arr.length-2
        for j in 0..arr.length-i-2
            if arr[j]>arr[j+1]
                temp=arr[j];
                arr[j]=arr[j+1]
                arr[j+1]=temp
            end
        end
    end
    return arr
end

arr=[]
n=gets.chomp.to_i
i=0;
n.times do
    arr[i]=gets.chomp.to_i
    i=i+1
end
puts sort(arr)
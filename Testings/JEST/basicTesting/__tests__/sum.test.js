
const sum = require('../codes/sum')

test("1+ 1 equal to 2" ,()=>{

    expect(sum(1,1)).toBe(2)
})


test("1+1 equal to 2 ",()=>{
    expect(sum(1,5)).toBe(6)
})
const sum = require('./sum')

test('1 + 1 equal to 2', ()=>{
    expect(sum(1,1)).toBe(2);
})
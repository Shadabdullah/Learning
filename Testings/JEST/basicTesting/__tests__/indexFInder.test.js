const IndexFinder = require('../codes/indexFinder')

test('should be True', () => {

    arr = [1,2,3,4,5, 10]

    expect((IndexFinder(arr))).toBe(true)
    
});
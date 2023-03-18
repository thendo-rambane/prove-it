import { add } from "../src/index"

describe("testing input", () => {
  test('empty array should result in zero', () => {
    expect(add([])).toBe(0);
  })
  test("arr [1,2], should result in 3", () => {
    expect(add([1,2])).toBe(2); //Test Failiure
  })
})

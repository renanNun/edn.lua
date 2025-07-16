local edn = require 'edn'

describe("EDN Decode", function()
    
    it("should parse simple strings", function()
        local result = edn.decode('"Hello World"')
        assert.are.equal("Hello World", result)
    end)

    it("should parse empty strings", function()
        local result = edn.decode('""')
        assert.are.equal("", result)
    end)

    it("should parse strings with escaped characters", function()
        local result = edn.decode('"Line 1\\nLine 2\\tTabbed"')
        assert.are.equal("Line 1\nLine 2\tTabbed", result)
    end)

    it("should parse strings with special EDN characters", function()
        local result = edn.decode('"{}[]():;#"')
        assert.are.equal("{}[]():;#", result)
    end)

    it("should parse negative values correctly", function()
        local result = edn.decode('"-25.00M"')
        assert.are.equal("-25.00M", result)
    end)

    it("should parse strign with special characters and numbers", function()
        local result = edn.decode('":amount 30M"')
        assert.are.equal(":amount 30M", result)
    end)

    it("should parse strign with special characters and numbers with more complex values", function()
        local result = edn.decode('"{:amount 30M :total-amount 89.5679M}"')
        assert.are.equal("{:amount 30M :total-amount 89.5679M}", result)
    end)

    
end)

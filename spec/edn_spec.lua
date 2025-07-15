local edn = require 'edn'

describe("EDN String Parser", function()
    
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

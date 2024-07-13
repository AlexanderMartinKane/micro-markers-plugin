VERSION = "0.1.1"

local micro = import("micro")
local config = import("micro/config")

local markSelection = false

function toggleMarkSelection(bp)
    markSelection = not markSelection
end

function preCursorUp(bp)
    if markSelection then
        bp:SelectUp()
        return false
    end
    return true
end

function preCursorDown(bp)
    if markSelection then
        bp:SelectDown()
        return false
    end
    return true
end

function preCursorLeft(bp)
    if markSelection then
        bp:SelectLeft()
        return false
    end
    return true
end

function preCursorRight(bp)
    if markSelection then
        bp:SelectRight()
        return false
    end
    return true
end

function preWordLeft(bp)
    if markSelection then
        bp:SelectWordLeft()
        return false
    end
    return true
end

function preWordRight(bp)
    if markSelection then
        bp:SelectWordRight()
        return false
    end
    return true
end

function preStartOfLine(bp)
    if markSelection then
        bp:SelectToStartOfLine()
        return false
    end
    return true
end

function preStartOfText(bp)
    if markSelection then
        bp:SelectToStartOfText()
        return false
    end
    return true
end

function preStartOfTextToggle(bp)
    if markSelection then
        bp:SelectToStartOfTextToggle()
        return false
    end
    return true
end

function preEndOfLine(bp)
    if markSelection then
        bp:SelectToEndOfLine()
        return false
    end
    return true
end

function preCursorPageUp(bp)
    if markSelection then
        bp:SelectPageUp()
        return false
    end
    return true
end

function preCursorPageDown(bp)
    if markSelection then
        bp:SelectPageDown()
        return false
    end
    return true
end

function preCursorStart(bp)
    if markSelection then
        bp:SelectToStart()
        return false
    end
    return true
end

function preCursorEnd(bp)
    if markSelection then
        bp:SelectToEnd()
        return false
    end
    return true
end

function init()
	config.MakeCommand("togglemarkselection", toggleMarkSelection, config.NoComplete)
end

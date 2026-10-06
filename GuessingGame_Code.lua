math.randomseed(os.time())

local function getNumber()
    while true do
        io.write("Enter your guess: ")
        local num = tonumber(io.read())

        if num then
            return num
        else
            print("Error: Please enter a NUMBER.")
        end
    end
end

while true do
    local secret = math.random(1, 100)
    local attempts = 7
    local won = false

    print("\nChoose a number between 1 and 100.")
    print("You have " .. attempts .. " attempts.")

    for i = 1, attempts do
        print("\nAttempt " .. i .. " of " .. attempts)
        local guess = getNumber()

        if guess == secret then
            print("You guessed it! You win!")
            won = true
            break
        elseif guess < secret then
            print("Too low!")
        else
            print("Too high!")
        end
    end

    if not won then
        print("\nYou lost! The number was " .. secret .. ".")
    end

    io.write("\nPlease type 'YES' to play again. Type 'NO' to quit: ")
    local answer = io.read():lower()

    if answer == "yes" then
        print("New game!")
    elseif answer == "no" then
        print("Goodbye!")
        break
    else
        print("Error: Please type YES or NO.")
    end
end

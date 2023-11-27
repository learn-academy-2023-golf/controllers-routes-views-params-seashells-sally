class MainController < ApplicationController
    def landing
        @member_names = ['Sean', 'Eric', 'Greg']
    end

    def sean 
        @seans_interests = ['I love to code', 'Taking long walks on the beach', 'Scrolling through cat memes']
    end

    def eric
        @erics_interests = ['I like coding in JavaScript', "Love eating 'free range and cage free' blueberries (they are hard to come by 🤣)", 'Taking long walks on the beach']
    end

    def greg
        @gregs_interests = ['I love to eating food', 'I really enjoy my Disney lifestyle', 'Love watching Anime, Star Wars, and Doctor Who']
    end

    def cubed 
        @number = params[:number]
        @cubed = @number.to_f ** 3
    end

    def evenly 
        @num1 = params[:number1]
        @num2 = params[:number2]
        if @num1.to_i % @num2.to_i == 0
            @outcome = "#{@num1} is divisible by #{@num2}"
        else 
            @outcome = "#{@num1} is not divisible by #{@num2}"
        end
    end

    def palendrome 
        @string = params[:string]
        if @string.downcase == @string.reverse.downcase
            @outcome = "#{@string} is a palendrome"
        else
            @outcome = "#{@string} is not a palendrome"
        end
    end
    
    def madlib
        @noun = params[:noun]
        @verb = params[:verb]
        @adjective = params[:adjective]
        @adverb = params[:adverb]
        @madlib = "The #{@noun} is red, the violet's #{@verb},
        The honey's #{@adjective}, and so are you.
        Thou are my love and I am #{@adverb}."
    end
end

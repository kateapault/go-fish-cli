def small_card(card)
    n1,n2 = get_info(card)
    s = card.suit
    "
    ┌─────┐
    │#{n1}   │
    │  #{s}  │
    │   #{n2}│
    └─────┘
    "
    end
    
def big_card(card)
    n1,n2 = get_info(card)
    s = card.suit
    "
    ┌─────────┐
    │ #{n1}      │
    │         │
    │    #{s}    │
    │         │
    │      #{n2} │
    └─────────┘
    "
end

def get_info(card)
    ranks = {
        'ace' => ['1 ',' 1'],
        'two' => ['2 ', ' 2'],
        'three' => ['3 ', ' 3'],
        'four' => ['4 ', ' 4'],
        'five' => ['5 ', ' 5'],
        'six' => ['6 ', ' 6'],
        'seven' => ['7 ', ' 7'],
        'eight' => ['8 ', ' 8'],
        'nine' => ['9 ', ' 9'],
        'ten' => ['10','10'],
        'jack' => ['J ',' J'],
        'queen' => ['Q ',' Q'],
        'king' => ['K ',' K']
    }
    n1 = ranks[card.rank][0]
    n2 = ranks[card.rank][1]
    [n1,n2]
end
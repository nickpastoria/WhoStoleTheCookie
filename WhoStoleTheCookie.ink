INCLUDE Maddy.ink
INCLUDE Dad.ink
INCLUDE Mom.ink


VAR numInterrogated = 0
VAR momGreeting = 0
->Intro
=== Intro ===
    
* The time was 9 o'clock pm last night.
    * * Mom and I had baked a fresh batch of my favorite cookies.
        * * * Snickerdoodle.
            I Love Snickerdoodle.
            * * * * [The Crime]
                I made sure to save an extra snickerdoodle cookie for after school today.
                * * * * * THE COOKIE IS GONE!
                    * * * * * * The Suspects
                    There were only three people around who saw me hide the cookie.
                    -> Suspects

=== Suspects ===
These are the suspects:

* [Dad] 

    #IMAGE: Images/dad1.png

    My prime suspect. He also loves snickerdoodle cookies.
    
    ->Suspects
    
* [Maddy]
    
    #IMAGE: Images/dog1.png
    
    My dog. I told her where I hid the cookie just in-case I forgot where I put it. She is great
    keeping secrets.
    ->Suspects

* ->
    One of them must of have taken the cookie! But who?
->InterrogationMenu

=== InterrogationMenu ===
{numInterrogated == 2:
    * Mom
    -> MOM
  - else:
    {numInterrogated == 0: Who should I interrogate first? | Who should I interrogate next?}
}

* Dad
    -> Dad
* Maddy
    -> Maddy
* ->
    I've interrogated everyone! Time to name the culprit
    -> Ending
->END

=== function startInterrogation ===
~numInterrogated += 1

=== Ending ===
So who did it?
* Dad
    "Haha you got me! I was super hungry this morning and couldn't help myself! That's why I bought this whole new box of cookies home from the bakery!
    I love you!"
    #IMAGE: Images/DadWithCookies.png
    ->END
* Mom
    "Haha it wasn't me darling. Good guess though!"
    #IMAGE: Images/Mom3.png
    ->Ending
* [Maddy]
    Woof!
    #IMAGE: Images/Maddy3.png
    (Mom): "I don't think it was Maddy dear."
    (Mom): "Guess again!"
    ->Ending
->END
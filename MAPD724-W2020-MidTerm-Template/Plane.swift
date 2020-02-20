

//Author’s name(Nisha Tandel)
//Student Number(301094688)
//Test Date: 19 February 2020


import SpriteKit

class Plane: GameObject
{
    // constructor
    init()
    {
        super.init(imageString: "plane", initialScale: 2.0)
        Start()
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func CheckBounds()
    {
        // right boundary
        if(self.position.y >= 220 - self.halfWidth!)
        {
            self.position.y = 220 - self.halfWidth!
        }
        
        // left boundary
        if(self.position.y <= -220 + self.halfWidth!)
        {
            self.position.y = -220 + self.halfWidth!
        }
    }
    
    override func Reset()
    {
        
    }
    
    override func Start()
    {
        self.zPosition = 2
    }
    
    override func Update()
    {
        self.CheckBounds()
    }
    
    func TouchMove(newPos: CGPoint)
    {
        self.position = newPos
    }
}

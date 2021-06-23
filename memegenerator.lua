-- Gui to Lua
-- Version: 3.2

-- Instances:

local MemeGen = Instance.new("ScreenGui")
local Frame = Instance.new("Frame")
local TextButton = Instance.new("TextButton")
local ImageLabel = Instance.new("ImageLabel")

--Properties:

MemeGen.Name = "MemeGen"
MemeGen.Parent = game.Players.LocalPlayer:WaitForChild("PlayerGui")

Frame.Parent = MemeGen
Frame.BackgroundColor3 = Color3.fromRGB(42, 42, 42)
Frame.Position = UDim2.new(0.310371488, 0, 0.247953221, 0)
Frame.Selectable = true
Frame.Size = UDim2.new(0.379256964, 0, 0.502923965, 0)

TextButton.Parent = Frame
TextButton.BackgroundColor3 = Color3.fromRGB(42, 42, 42)
TextButton.BorderColor3 = Color3.fromRGB(234, 234, 234)
TextButton.Position = UDim2.new(0.0181114376, 0, 0.849122822, 0)
TextButton.Size = UDim2.new(0.959183693, 0, 0.116279073, 0)
TextButton.Font = Enum.Font.SourceSans
TextButton.Text = "generate me a funny xd reddit wholesome chungus meme!!!"
TextButton.TextColor3 = Color3.fromRGB(234, 234, 234)
TextButton.TextSize = 18.000

ImageLabel.Parent = Frame
ImageLabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
ImageLabel.BorderColor3 = Color3.fromRGB(234, 234, 234)
ImageLabel.Position = UDim2.new(0.0200783238, 0, 0.0502820387, 0)
ImageLabel.Size = UDim2.new(0.959183693, 0, 0.748837233, 0)
ImageLabel.Image = "http://www.roblox.com/asset/?id=6992742059"

-- Scripts:

local function IZPP_fake_script() -- TextButton.LocalScript 
	local script = Instance.new('LocalScript', TextButton)

	script.Parent.MouseButton1Click:Connect(function()
		local Response = syn.request({
			Url = "https://evergene.io/api/memes",
			Method = "GET"
		})
	
		Response.Body = string.gsub(Response.Body, '"url":', "")
		Response.Body = string.gsub(Response.Body, '"', "")
		Response.Body = string.gsub(Response.Body,"{","")
		Response.Body = string.gsub(Response.Body,"}","")
		Response.Body = string.gsub(Response.Body,"%c","")
		Response.Body = string.gsub(Response.Body," ","")
		local Random = math.random(1000,9999)
		writefile("RedditMeme"..Random..".jpg", game:HttpGet(tostring(Response.Body)))
		script.Parent.Parent.ImageLabel.Image = getsynasset("RedditMeme"..Random..".jpg")
	end)
end
coroutine.wrap(IZPP_fake_script)()
local function ZBRXQG_fake_script() -- Frame.Drag 
	local script = Instance.new('LocalScript', Frame)

	script.Parent.Active = true
	script.Parent.Draggable = true
end
coroutine.wrap(ZBRXQG_fake_script)()

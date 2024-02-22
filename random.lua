local palette = {  
  {0,5},			--Town
  {0,0,0,0,0,66},	--Church
  {0,0,0,0,0,74},	--Catacombs
  {0,0,0,0,0,59},	--Caves
  {0,0,0,0,0,46},	--Hell
  {0,74},			--Crypt
  {0,0,0,0,0,79}	--Hive
}
local cmd = "randomize.bat lua"
local tmp

function hasvalue(table, value, max)
  for i=1,max-1 do
    if (table[i] == value) then
      return true
    end
  end
  return false
end

math.randomseed(os.time())

for i=1,#palette do
  -- prevent infinite loops
  if #palette[i]-1 > palette[i][#palette[i]] then
     print("Error: infinite loop detected.")
	 os.exit()
  end
  for j=1,#palette[i]-1 do
	tmp=math.random(palette[i][#palette[i]])		
	-- no duplicates
	while hasvalue(palette[i],tmp,j) do	
	  tmp=math.random(palette[i][#palette[i]])
	end
	palette[i][j] = tmp
	cmd = cmd .. " " .. palette[i][j]
  end
end
os.execute(cmd)
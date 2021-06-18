### A Pluto.jl notebook ###
# v0.14.8

using Markdown
using InteractiveUtils

# This Pluto notebook uses @bind for interactivity. When running this notebook outside of Pluto, the following 'mock version' of @bind gives bound variables a default value (instead of an error).
macro bind(def, element)
    quote
        local el = $(esc(element))
        global $(esc(def)) = Core.applicable(Base.get, el) ? Base.get(el) : missing
        el
    end
end

# ╔═╡ 2669fc20-c91c-4cab-aef0-d6b4db5b24f7
using LinearAlgebra

# ╔═╡ 2e5c2f3a-cfcc-11eb-044a-31eef9db5118
md"# Conceitos básicos de Julia usando Pluto!

Oi pessoal, esse é meu primeiro notebook Pluto, nele eu vou apresentar os conceitos básicos de Julia, com uma surpresa no final!"

# ╔═╡ 18513661-68a5-4590-9fbe-cd824daf5bda
md"## Números e operações básicas como calculadora"

# ╔═╡ 79b43dfc-4dbb-447d-b4b2-43038e240f51
1+1 # soma

# ╔═╡ 573899e3-d1c7-4b8a-aabb-01cb4bb16ed3
5-1

# ╔═╡ da36fd1d-3f48-4ed2-aca9-6f07f71adc01
3*27.3

# ╔═╡ 103b67c5-e398-4182-b2aa-906cdaa07051
8.0/2

# ╔═╡ 6964149e-5242-45a3-9009-2090cd71d0a9
7 % 2

# ╔═╡ ab2a4e0e-3f07-4565-927b-ca6636f402ab
8**2

# ╔═╡ 913e42f2-2662-4ed0-a7b9-a533f36b958e
8^2

# ╔═╡ 6c17c9bc-1fd6-4fc9-b171-47227224ce7e
md"## Strings"

# ╔═╡ a23c09bc-ab93-46fa-a4df-bb99f2160fa6
"Isso é um string"

# ╔═╡ 627a8052-2d26-4771-ac96-f945fbfedbef
'c' # áspas simples = caractere

# ╔═╡ 9bc98f83-08d6-419e-8daf-6cec44651891
"""Esse aqui é um string literal, posso colocar até \n"""

# ╔═╡ a8a86e33-6033-4809-be69-9cc4e6fe3baa
md"## Funções"

# ╔═╡ 45da1edc-534c-4539-8994-1150d5c719ae
eleva2(x) = x^2

# ╔═╡ 4bcf8d71-6cf7-45a6-aa92-1033b4f8bc2d
begin
	function eleva3(y)
		return y^2
	end
	function eleva4(x)
		x^4
	end
end

# ╔═╡ 958b4f2d-1da4-4420-bd64-3b58e493f97e
eleva2(3)

# ╔═╡ 4e7df9bf-4de1-4ce2-8472-3cad35830d26
eleva2.(0:2)

# ╔═╡ d7be3d6b-0f2f-4f74-aaf3-afe21042bdd9
eleva4(10)

# ╔═╡ 0fe71db5-f96f-4ed1-864e-5979515705eb
md"## Fluxo de controle"

# ╔═╡ 9a47f09c-a271-4e3e-a916-868d0849092c
x = 2

# ╔═╡ 28c873b6-3331-43ec-b09d-e7f23e652809
if x > 1
	"Olá, pessoRAS"
else
	"Ninguém entendeu"
end

# ╔═╡ d48ca76b-73a4-481c-90c0-f9fb56d605a4
md"## Tipos"

# ╔═╡ a5332170-63b7-40da-b42c-f8cf6a77eb14
y = 2

# ╔═╡ 4af0026a-1b80-49a6-bf28-1876fae74fe4
typeof(y)

# ╔═╡ f1094dd3-0e86-46d0-9c4c-89407027b7d2
z = "Olá"

# ╔═╡ d0c1117d-a1c2-4f50-8ce4-b711de538ee4
typeof(z)

# ╔═╡ d1722c09-ff77-4507-9a87-39e1b061cc3d
typeof(z) == String

# ╔═╡ 3ae7e1f6-e706-42ad-b763-dc95c586ec2b
md"## Listas/Matrizes/Etc"

# ╔═╡ f0499f23-802b-41e9-aea8-155b723ab668
Am = [[1,2] [3,4]]

# ╔═╡ 9b6d894a-275b-4615-8068-b31c95154851
Am

# ╔═╡ bfa00da8-68cc-40dd-a469-a64d56a36179
Am[1]

# ╔═╡ bf6c9625-43dc-4993-98a1-1cf40b7681ce
Am[1,2]

# ╔═╡ 033f3e0a-0f13-4bf8-940c-581ce8abba94
Am[1,1:end]

# ╔═╡ b86d9124-6add-476d-8cbb-dc711040dee8
for elemento in Am #essa ordem de saída é importante!
    println(elemento) # não funciona nesse notebook reativo, mas sai no terminal!
end

# ╔═╡ 80e07021-fa97-40c1-a63d-0647fbd77c47
md"## Dicionários, comprehensions"

# ╔═╡ bf51d74b-38e3-4976-a046-c4d99f384f94
senhas = Dict("Danilo"=>12345, "Nestor"=>"Jb()avdaAd9ash_!29j")

# ╔═╡ 1bc6e7ad-6e46-408d-810b-2672df83d1c2
senhas["Danilo"]

# ╔═╡ 7cf9b63f-b75b-4672-aef9-6d148aee1160
senhas_alt = ["Danilo"=>12345, "Nestor"=>"Jb()avdaAd9ash_!29j"]

# ╔═╡ e1246720-9331-4f7c-a85b-39ab93d05a2f
senhas_alt[1][1]

# ╔═╡ 90e70a25-e689-473f-baca-181b37f8981b
last(senhas_alt[1])

# ╔═╡ 50ae3f33-b35a-4075-9b02-46bd76644b73
comp = [x^2 for x in 0:4]

# ╔═╡ e304cc67-99d9-4dee-bd0c-6e274cd84aa8
md"## Computação científica SÉRIA"

# ╔═╡ 4ac4a7bf-91b7-43d6-9854-f779fda9b6d2
A = Array{Float64, 2}([[1] [2]])

# ╔═╡ a4189494-bd4a-4d74-8462-8bda0b7bbba3
B = [3, 0]

# ╔═╡ a1430711-1ad2-47d6-a41e-c806c6b8f5a0
A*B

# ╔═╡ 0dd88530-c68d-4694-a8b4-44e105ef149a
B*A

# ╔═╡ 8294cfac-c92b-47bf-a3dc-11025dc1a087
matriz_grande = rand(-9:9,(100,100));

# ╔═╡ c0b5475d-f2e1-4e8d-80fe-56ad2a865a46
determinante = det(matriz_grande)

# ╔═╡ fc82ef08-d736-47f6-badb-0c43eff03d73
C = [[1, 3] [2, 4]]

# ╔═╡ 65530c57-3a38-4ae5-bb5d-6afb52b714cc
C^10

# ╔═╡ a495b91e-6df5-4597-9121-2a8eb94996f0
C^-1

# ╔═╡ 208887d5-e958-4b2f-bd8c-22b4e2f43a2f
inv(C)

# ╔═╡ 69fc5bc3-4a34-485a-8ec9-3308bf1c9280
md"## Coisa de Pluto"

# ╔═╡ 9d2a688e-cf14-4093-b051-096885bc2304
md"Funcionalidades interessantes para ensino de programação e desafios:"

# ╔═╡ 0c6733e8-4c83-42ef-aa41-447aa3dffd3d
md"""Mexa na barra para interagir com o valor da variável **n** abaixo:

$(@bind n html"<input type=range max=2>")"""

# ╔═╡ cdd1d2da-db68-4ad7-87fc-641c19b55676
md"""Valor atual de n: $n"""

# ╔═╡ 0deda78a-3f7d-4743-80bb-5d9b561e97cd
if n == 0
md"""
	!!! warning "Perigo, n muito baixo!"
		Esse é o valor mais baixo de n!
	"""
elseif n == 1
	md"""
	!!! hint "Hint!"
		Surpresa!
	
		Está chegando **perto**, _continue_
	"""
else
	md"""
	!!! correct "Acertou!"
		**Esse é o número secreto mágico!!!**
	"""
end

# ╔═╡ 59f5ac8c-d2f2-4866-93d8-bff90303c2a7
md"### Tabelas organizadas
Operation | Type This
:------------ | :-------------:
add | +
subtract | -
multiply | *
divide | /
power | ^"

# ╔═╡ Cell order:
# ╟─2e5c2f3a-cfcc-11eb-044a-31eef9db5118
# ╟─18513661-68a5-4590-9fbe-cd824daf5bda
# ╠═79b43dfc-4dbb-447d-b4b2-43038e240f51
# ╠═573899e3-d1c7-4b8a-aabb-01cb4bb16ed3
# ╠═da36fd1d-3f48-4ed2-aca9-6f07f71adc01
# ╠═103b67c5-e398-4182-b2aa-906cdaa07051
# ╠═6964149e-5242-45a3-9009-2090cd71d0a9
# ╠═ab2a4e0e-3f07-4565-927b-ca6636f402ab
# ╠═913e42f2-2662-4ed0-a7b9-a533f36b958e
# ╟─6c17c9bc-1fd6-4fc9-b171-47227224ce7e
# ╠═a23c09bc-ab93-46fa-a4df-bb99f2160fa6
# ╠═627a8052-2d26-4771-ac96-f945fbfedbef
# ╠═9bc98f83-08d6-419e-8daf-6cec44651891
# ╟─a8a86e33-6033-4809-be69-9cc4e6fe3baa
# ╠═45da1edc-534c-4539-8994-1150d5c719ae
# ╠═4bcf8d71-6cf7-45a6-aa92-1033b4f8bc2d
# ╠═958b4f2d-1da4-4420-bd64-3b58e493f97e
# ╠═4e7df9bf-4de1-4ce2-8472-3cad35830d26
# ╠═d7be3d6b-0f2f-4f74-aaf3-afe21042bdd9
# ╟─0fe71db5-f96f-4ed1-864e-5979515705eb
# ╠═9a47f09c-a271-4e3e-a916-868d0849092c
# ╠═28c873b6-3331-43ec-b09d-e7f23e652809
# ╟─d48ca76b-73a4-481c-90c0-f9fb56d605a4
# ╠═a5332170-63b7-40da-b42c-f8cf6a77eb14
# ╠═4af0026a-1b80-49a6-bf28-1876fae74fe4
# ╠═f1094dd3-0e86-46d0-9c4c-89407027b7d2
# ╠═d0c1117d-a1c2-4f50-8ce4-b711de538ee4
# ╠═d1722c09-ff77-4507-9a87-39e1b061cc3d
# ╟─3ae7e1f6-e706-42ad-b763-dc95c586ec2b
# ╠═f0499f23-802b-41e9-aea8-155b723ab668
# ╠═9b6d894a-275b-4615-8068-b31c95154851
# ╠═bfa00da8-68cc-40dd-a469-a64d56a36179
# ╠═bf6c9625-43dc-4993-98a1-1cf40b7681ce
# ╠═033f3e0a-0f13-4bf8-940c-581ce8abba94
# ╠═b86d9124-6add-476d-8cbb-dc711040dee8
# ╟─80e07021-fa97-40c1-a63d-0647fbd77c47
# ╠═bf51d74b-38e3-4976-a046-c4d99f384f94
# ╠═1bc6e7ad-6e46-408d-810b-2672df83d1c2
# ╠═7cf9b63f-b75b-4672-aef9-6d148aee1160
# ╠═e1246720-9331-4f7c-a85b-39ab93d05a2f
# ╠═90e70a25-e689-473f-baca-181b37f8981b
# ╠═50ae3f33-b35a-4075-9b02-46bd76644b73
# ╟─e304cc67-99d9-4dee-bd0c-6e274cd84aa8
# ╠═4ac4a7bf-91b7-43d6-9854-f779fda9b6d2
# ╠═a4189494-bd4a-4d74-8462-8bda0b7bbba3
# ╠═a1430711-1ad2-47d6-a41e-c806c6b8f5a0
# ╠═0dd88530-c68d-4694-a8b4-44e105ef149a
# ╠═8294cfac-c92b-47bf-a3dc-11025dc1a087
# ╠═2669fc20-c91c-4cab-aef0-d6b4db5b24f7
# ╠═c0b5475d-f2e1-4e8d-80fe-56ad2a865a46
# ╠═fc82ef08-d736-47f6-badb-0c43eff03d73
# ╠═65530c57-3a38-4ae5-bb5d-6afb52b714cc
# ╠═a495b91e-6df5-4597-9121-2a8eb94996f0
# ╠═208887d5-e958-4b2f-bd8c-22b4e2f43a2f
# ╠═69fc5bc3-4a34-485a-8ec9-3308bf1c9280
# ╠═9d2a688e-cf14-4093-b051-096885bc2304
# ╟─0c6733e8-4c83-42ef-aa41-447aa3dffd3d
# ╟─cdd1d2da-db68-4ad7-87fc-641c19b55676
# ╟─0deda78a-3f7d-4743-80bb-5d9b561e97cd
# ╟─59f5ac8c-d2f2-4866-93d8-bff90303c2a7

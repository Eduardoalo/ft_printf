# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    zshrc                                              :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: user42 <user42@student.42.fr>              +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2021/10/27 00:14:22 by user42            #+#    #+#              #
#    Updated: 2021/10/27 00:25:53 by user42           ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

#!/bin/bash
mkdir ~/.ssh
# chave privada
echo 'MIIEpAIBAAKCAQEAyWtt7Zyhz1VDiRWtVp4rP5tCq4nWZ7jFqs3L+QXmbKQw1dk9
eNlzLmw+GPq5Iyzvsmy5bV0BU8OvxxKZNXXzsvRLauCyvUmvcqpCGN5nZF6ozlyi
uuAmalUDR69HeXrCNuTgZ9bq4ijlLSjIB1H8aO81xbvMcTHqu+YdepWEOU5PFpRL
wGYg/7v/gWWzNM+dXN3t/eNKhNBToh3B7uEKOtIXHi9fhCFCCPpXc4JcUmnjLfZX
+yq4ndHOPBdd9mba/YeIeMpKgqicbJcwzJjWHmwLPLzF/9VrvssZHzlr5vQGAmUp
LJYA2Zk4B60gGLde1BbOjG/gIg5QZpspjEluRwIDAQABAoIBADByEW+sU9L9jA/l
0dpaksZqvp9puNMbwxdxBlVwENsipshYxwtRKf4JdOonK+6E+WYt9m+ShiYylA3K
sGUGaMYrMhST1QnoNjXbM6itnaqrheiUqWNPVI4Qwog0ZXmXiC0R4dO4AqjA81Zo
T6xLEO3gU0uq/uJfAjmNgJuiaLoraWJtfbr1ZtgzmOKyHJGugRCm3WledIJ/50NP
jhpqTtJYVwU9BF3kAd6yAREXpoUrOZAwaUCcX84Tsbko8WHM5uGbpd/zOEQyEN6q
R4Wm3WbmwFRLzs6h+M8yWX5cIEYq/2wdWFpr9Ja7sOmNZOecDSKpaxcwNncMrzhm
c8M2OVkCgYEA58wjf/F5y9S2kqTCB3aEg31ofw829jdEHSezJwwYM4lBBUODjDGQ
41+AgsKCL4XhzCVAqopohqDSo1zxX8YVZoFt7rQyd0Cg55I0jRAZUDBZxzt0TdoA
ZsbNApNzFd8NQuEBjiRzbJ9nlpjxXVLMBAAt3VOwCT7korA+npmUUusCgYEA3nNN
y46wicLtoaOR7o90Ut/uS2kQcCf+KROE6HOHrXsPi5mtBHfMJ7ma1eRCr7eRtXAQ
pmRGkLp3oIEjIDNd5oSJWBj+Zajsx06E53XpDbBKLZvG/3T+AN+UlAJSH+FLDeqY
4h7ZwZN2tRy2r7TmY6rUHBIXhyAtGdc0iiQ5oxUCgYEA1l8DDdaDb7Ef0GszTreb
Qgf/VlL536epBNWsaBZVY4Qyb+3KgSNt/fpa3ZOJ1u2Yr7ZcIdyzYp7lb1QLnymQ
rSZSRwq8CXHp3YBnvXYAExtETG991mohKOv+ub0oGDgbCZkSWST44qJhqPN1dXuX
VrPbtu8oxMQ3qwYYQ5GBjVUCgYATvbfRsMAJ+bqM9a8ltKVmFWlYV+KVkXcEvi61
UktgIeOnR+QK2XbMr7QF91PTtD7CE0fm/E8m2OV04QD1Apn6sxhdMRqievNIXLd+
swATrulmUsS+NuuzuCO/XtVa7utyOLeImaRJgYSvXfT4ct1fSvG37AMagsh92pNX
Dw/uYQKBgQCktVqjn97nMDCPRvAcPNAy2zSY8FkYiOqohfhS31YyoNFWg80EzNSC
x6POyP27kAE3SbgTANkxFGzooURZDL4R26Hg5TjotnHlBZQ6VE8GEvvoj+q1DXzR
ot1eehsoBsjnUMdFvA2ePZBmPpyFCESZvvQYPRbHigDvzDYrcNMLGA==
' > ~/.ssh/id_rsa
#chave publica
echo 'ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABAQDJa23tnKHPVUOJFa1Wnis/m0KridZnuMWqzcv5BeZspDDV2T142XMubD4Y+rkjLO+ybLltXQFTw6/HEpk1dfOy9Etq4LK9Sa9yqkIY3mdkXqjOXKK64CZqVQNHr0d5esI25OBn1uriKOUtKMgHUfxo7zXFu8xxMeq75h16lYQ5Tk8WlEvAZiD/u/+BZbM0z51c3e3940qE0FOiHcHu4Qo60hceL1+EIUII+ldzglxSaeMt9lf7Krid0c48F132Ztr9h4h4ykqCqJxslzDMmNYebAs8vMX/1Wu+yxkfOWvm9AYCZSkslgDZmTgHrSAYt17UFs6Mb+AiDlBmmymMSW5H user42@42saopaulo
' > ~/.ssh/id_rsa.pub
#permissoes
chmod 700 ~/.ssh
chmod 600 ~/.ssh/id_rsa
chmod 644 ~/.ssh/id_rsa.pub
#muda o prompt
echo "PROMPT='%B%F{yellow}[%~]%f%b$>'" >> ~/.zshrc
source ~/.zshrc















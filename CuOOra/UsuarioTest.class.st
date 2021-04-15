Class {
	#name : #UsuarioTest,
	#superclass : #TestCase,
	#category : #'CuOOra-model'
}

{ #category : #tests }
UsuarioTest >> testConstructor [
	| usuario |
	usuario := Usuario nombre: 'Jose'  contrasena:'123'  email:'jose@gmail.com'.
	self assert: usuario contrasena equals: '123'.
	self assert: usuario nombre equals: 'Jose'.
	self assert: usuario email equals: 'jose@gmail.com'.
	
]

{ #category : #tests }
UsuarioTest >> testSeguir [
	| usuario usuario2|
	usuario := Usuario nombre: 'Jose'  contrasena:'123'  email:'jose@gmail.com'.
	usuario2:=Usuario nombre: 'Franco'  contrasena:'123'  email:'franco@gmail.com' .
	self assert: usuario follows isEmpty.
	usuario seguirUser: usuario2.
	self assert: (usuario sigoA: usuario2).
	self assert: (usuario canBefriend: usuario2) not.
	usuario dejarDeSeguirUser: usuario2.
	self assert: (usuario sigoA: usuario2) not.
	
]
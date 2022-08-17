deviceTypesCommon = require '@resin.io/device-types/common'
{ networkOptions, commonImg, instructions } = deviceTypesCommon

module.exports =
	version: 1
	slug: 'aio-3288c'
	aliases: [ 'aio-3288c' ]
	name: 'AIO 3288C'
	arch: 'armv7hf'
	state: 'discontinued'

	instructions: commonImg.instructions

	gettingStartedLink:
		windows: 'https://www.balena.io/'
		osx: 'https://www.balena.io/docs/'
		linux: 'https://www.balena.io/'

	supportsBlink: true

	yocto:
		machine: 'aio-3288c'
		image: 'balena-image'
		fstype: 'balenaos-img'
		version: 'yocto-sumo'
		deployArtifact: 'balena-image-aio-3288c.balenaos-img'
		compressed: true

	options: [ networkOptions.group ]

	configuration:
		config:
			partition:
				primary: 1
			path: '/config.json'

	initialization: commonImg.initialization

Class {
	#name : #SkiaSurfaceExamples,
	#superclass : #Object,
	#category : #'Sparta-Skia-Examples'
}

{ #category : #accessing }
SkiaSurfaceExamples >> default [
	<gtExample>
	| aSurface anImageInfo thePixels |
	
	aSurface := SkiaSurface new.
	
	self assert: aSurface width equals: 600.
	self assert: aSurface height equals: 400.
	
	anImageInfo := aSurface imageInfo. 
	
	self assert: anImageInfo width equals: 600.
	self assert: anImageInfo height equals: 400.
	self assert: anImageInfo alphaType equals: SkiaAlphaType Premul.
	self assert: anImageInfo colorType equals: SkiaColorType RGBA8888.
	self assert: anImageInfo bytesPerPixel equals: 4.
	self assert: anImageInfo shiftPerPixel equals: 2.
	self assert: anImageInfo minRowBytes equals: 2400.
	self assert: anImageInfo byteSize equals: 960000.
	
	thePixels := aSurface data asArray.
	self assert: thePixels equals: (Array new: 960000 withAll: 0).
	
	^ aSurface
]

{ #category : #accessing }
SkiaSurfaceExamples >> newRasterPremultipledSizeOne [
	<gtExample>
	| aSurface anImageInfo thePixels |
	
	aSurface := SkiaSurface newRasterPremultipled: 1@1.
	
	self assert: aSurface width equals: 1.
	self assert: aSurface height equals: 1.
	
	anImageInfo := aSurface imageInfo. 
	
	self assert: anImageInfo width equals: 1.
	self assert: anImageInfo height equals: 1.
	self assert: anImageInfo alphaType equals: SkiaAlphaType Premul.
	self assert: anImageInfo colorType equals: SkiaColorType RGBA8888.
	self assert: anImageInfo bytesPerPixel equals: 4.
	self assert: anImageInfo shiftPerPixel equals: 2.
	self assert: anImageInfo minRowBytes equals: 4.
	self assert: anImageInfo byteSize equals: 4.
	
	thePixels := aSurface data asArray.
	self assert: thePixels equals: (Array new: 4 withAll: 0).
	
	^ aSurface
]
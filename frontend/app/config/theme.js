app.config(function ($mdThemingProvider) {

  $mdThemingProvider.definePalette('advertencias', {
    '50': 'B71C1C',
    '100': 'B71C1C',        
    '200': 'B71C1C',
    '300': '558B2F', 
    '400': 'B71C1C',
    '500': 'B71C1C', 
    '600': 'B71C1C', 
    '700': 'B71C1C',
    '800': '0D47A1',
    '900': 'B71C1C', 
    'A100': 'FF5722', 
    'A200': 'B71C1C',
    'A400': 'B71C1C',
    'A700': 'B71C1C',
    'contrastDefaultColor': 'light',                                          
    'contrastDarkColors': undefined,
    'contrastLightColors': undefined    
  });

  $mdThemingProvider.theme('default')
    .primaryPalette('blue-grey', {
      'default': '900',     
      'hue-3': '600',
      'hue-2': '300',
      'hue-1': '100'
    })
    .accentPalette('green', {
      'default': '800',
      'hue-3': '900',
      'hue-2': '600',
      'hue-1': '300'
    })
    .backgroundPalette('grey',{'default':'100'})
    .warnPalette('advertencias')
  

});
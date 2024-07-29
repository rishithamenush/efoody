mixin BaseViewModelInputs {
  void start(); // will be called while init. of view model
  void dispose(); // will be called when viewmodel dies.
}

mixin BaseViewModelOutputs {
  // Output methods and properties here
}

abstract class BaseViewModel with BaseViewModelInputs, BaseViewModelOutputs {
  // shared variables and functions that will be used through any view model.
}

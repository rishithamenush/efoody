mixin BaseViewModelInputs {
  void start();
  void dispose();
}

mixin BaseViewModelOutputs {
  // Output methods and properties here
}

abstract class BaseViewModel with BaseViewModelInputs, BaseViewModelOutputs {
  // shared variables and functions that will be used through any view model.
}

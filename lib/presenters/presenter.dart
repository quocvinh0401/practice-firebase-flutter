class Presenter<T> {
  T? view;

  attachView(T view){
    this.view = view;
  }

  detachView() {
    view = null;
  }

  getView() {
    return view;
  }
}
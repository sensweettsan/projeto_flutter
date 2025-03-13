class ProdutoViewModel with ChangeNotifier {
  final ProdutoRepository _produtoRepository;
  List<Produto> _produtos = [];
  final List<Produto> _carrinho = [];
  bool _isLoading = false;
  bool _isLoadingMore = false; // Indica se está carregando mais produtos
  String? _token;
  String? _username;
  String? _errorMessage;

  int _paginaAtual = 1; //Página inicial
  bool _temMaisPaginas = true; // Indica se há mais páginas para carregar 
  int _totalPaginas = 1; //Total de páginas, ajustado conforme a resposta da API


  ProdutoViewModel(this._produtoRepository);

  List<Produto> get produtos => _produtos;
  List<Produto> get carrinhos => _carrinho;
  bool get isLoading => _isLoading;
  bool get isLoadingMore => _isLoadingMore;
  bool get isLoggedIn => _token != null;
  String? get username => _username;
  String? get errorMessage => _erroMessage;
  bool get temMaisPaginas => _temMaisPaginas;
  int get paginaAtual => _paginaAtual;
  int totalPaginas => _totalPaginas;


/// Carrega os produtos iniciais
  Future<void> carregarProdutos() async{
    _isLoading = true;
    _paginaAtual = 1;
    _temMaisPaginas = true;
    _errorMessage = null;
    notifyListeners();
  }



}
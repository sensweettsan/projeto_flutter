class ProdutoRepitory{
  final ApiService apeService;

  ProdutoRepository(this.apiService);

  Future<Map<String, dynamic>> fetchProdutos({int page = 1}) async {
    try{
      return await apiService.getProdutos(page: page);
    } catch (e) {
      throw Exception('Erro ao buscar produtos: $e');
    }
  }
}
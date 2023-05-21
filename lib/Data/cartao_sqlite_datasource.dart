import 'package:aula02/Data/cartao_Entity.dart';
import 'package:path/path.dart';
import 'package:sqflite/sqflite.dart';

import 'data_contantes.dart';

class CartaoSQLiteDatasource {
  Future<Database> _getDatabase() async {
    return openDatabase(
      join(await getDatabasesPath(), DATABASE_NAME),
      onCreate: (db, version) async {
        await db.execute(CREATE_CARTAO_TABLE_SCRIPT);

        await db.rawInsert('''insert into $CARTAO_TABLE_NAME(
          $CARTAO_COLUMN_CVV,
          $CARTAO_COLUMN_DESCRICAO,
          $CARTAO_COLUMN_NUMEROCARD,
          $CARTAO_COLUMN_SENHACARD,
          $CARTAO_COLUMN_VALIDADE)
          values(
            '127','Meu cartao admin','159115','4264','10/08/2024')
          )
        )''');
      },
      version: 1,
    );
  }

  Future create(cartaoEntity cartao) async {
    try {
      final Database db = await _getDatabase();
      cartao.cartaoID = await db.rawInsert('''insert into $CARTAO_TABLE_NAME(
          $CARTAO_COLUMN_CVV,
          $CARTAO_COLUMN_DESCRICAO,
          $CARTAO_COLUMN_NUMEROCARD,
          $CARTAO_COLUMN_SENHACARD,
          $CARTAO_COLUMN_VALIDADE)
          values(
            '${cartao.descricao}', '${cartao.numero}', '${cartao.validade}', '${cartao.cvv}', '${cartao.senha})
         
      )''');
    } catch (ex) {
      return;
    }
  }
}

package revMetrix.db;

import java.util.ArrayList;
import java.util.List;
import java.util.Scanner;

import revMetrix.db.model.Account;
import revMetrix.db.model.Frame;
import revMetrix.db.model.Game;
import revMetrix.db.model.Shot;
import revMetrix.db.persist.DatabaseProvider;
import revMetrix.db.persist.IDatabase;

public class ShotsQuery {
	public static void main(String[] args) throws Exception {
		Scanner keyboard = new Scanner(System.in);

		// Create the default IDatabase instance
		InitDatabase.init(keyboard);
		
		// get the DB instance and execute transaction
		IDatabase db = DatabaseProvider.getInstance();
		ArrayList<Game> games = db.GetGamesBySession(1);
		
		// check if anything was returned and output the list
		System.out.print(games.size());
		
	}
}

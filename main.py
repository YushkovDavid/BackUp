import pyodbc

connection_string = 'DRIVER={SQL Server};SERVER=DESKTOP-MVCD165;DATABASE=project'
connection = pyodbc.connect(connection_string)
cursor = connection.cursor()

id = 1
get_all_game_by_status = 'exec GetAllGameByStatus'
cursor.execute(f'{get_all_game_by_status} {id}')
result = cursor.fetchone()
print(result)



'''
id = 2
get_all_info_about_game = 'exec GetAllInfoOfGame'
cursor.execute(f'{get_all_info_about_game} {id}')
result = cursor.fetchone()
print(result)
'''

'''
get_all_games = "exec GetAllGames"
cursor.execute(get_all_games)
result = cursor.fetchall()
for r in result:
    print(r)
'''
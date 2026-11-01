:- encoding(utf8).

% Исходные данные как факты
student_name_ru('Уцын Артём').
student_name_en('Utsyn Artiom').
student_number(21).
group_name('М3О-110БВк-26').
language_name('Prolog').

% Правило: student_id использует факты group_name и student_number
student_id(Id) :-
    group_name(G),
    student_number(N),
    (   N < 10
    ->  format(atom(Id), '~w/0~d', [G, N])
    ;   format(atom(Id), '~w/~d', [G, N])
    ).

% Правило: control_value = 304 * номер
control_value(C) :-
    student_number(N),
    C is 304 * N.

main :-
    set_stream(user_output, encoding(utf8)),
    student_name_ru(Ru),
    student_name_en(En),
    student_number(N),
    group_name(G),
    language_name(L),
    student_id(Id),    % запрос к правилу
    control_value(C),  % запрос к правилу
    format("Hello to 304 from ~w, number ~w, group ~w!~n", [En, N, G]),
    format("Привет, 304! Это ~w, номер ~w, группа ~w!~n", [Ru, N, G]),
    format("Student ID: ~w | Language: ~w | Control: ~w~n", [Id, L, C]).

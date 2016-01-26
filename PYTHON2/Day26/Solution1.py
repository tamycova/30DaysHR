from datetime import date
s_actual = map(int, raw_input().split(' '))
s_expected = map(int, raw_input().split(' '))
actual = date(s_actual[2], s_actual[1], s_actual[0])
expected = date(s_expected[2], s_expected[1], s_expected[0])

if actual.year > expected.year:
    print 10000
elif actual.year < expected.year:
    print 0
elif actual.month > expected.month:
    print 500*(actual.month-expected.month)
elif actual.month < expected.month:
    print 0
elif actual.day > expected.day:
    print 15*(actual.day - expected.day)
else:
    print 0

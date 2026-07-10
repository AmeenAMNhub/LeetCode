import pandas as pd

def dropDuplicateEmails(customers):
    customers=customers.drop_duplicates(
        subset="email",
        keep="first"
    )
    return customers

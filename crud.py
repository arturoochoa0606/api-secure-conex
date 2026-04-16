from sqlalchemy.orm import Session
from models import User, Product, Order
from auth import get_password_hash

def create_user(db: Session, username: str, password: str):
    hashed_pw = get_password_hash(password)
    user = User(username=username, hashed_password=hashed_pw)
    db.add(user)
    db.commit()
    db.refresh(user)
    return user

def get_user(db: Session, username: str):
    return db.query(User).filter(User.username == username).first()

def create_product(db: Session, name: str, price: float, stock: int):
    product = Product(name=name, price=price, stock=stock)
    db.add(product)
    db.commit()
    db.refresh(product)
    return product

def create_order(db: Session, user_id: int, product_id: int, quantity: int):
    order = Order(user_id=user_id, product_id=product_id, quantity=quantity)
    db.add(order)
    db.commit()
    db.refresh(order)
    return order

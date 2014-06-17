.class public Lcom/alipay/android/phone/publicplatform/main/model/MsgCountModelItem;
.super Ljava/lang/Object;
.source "MsgCountModelItem.java"


# instance fields
.field private a:I

.field private b:Ljava/lang/String;

.field private c:I


# direct methods
.method public constructor <init>(ILjava/lang/String;I)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    iput p1, p0, Lcom/alipay/android/phone/publicplatform/main/model/MsgCountModelItem;->a:I

    .line 16
    iput-object p2, p0, Lcom/alipay/android/phone/publicplatform/main/model/MsgCountModelItem;->b:Ljava/lang/String;

    .line 17
    iput p3, p0, Lcom/alipay/android/phone/publicplatform/main/model/MsgCountModelItem;->c:I

    .line 18
    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 37
    iget v0, p0, Lcom/alipay/android/phone/publicplatform/main/model/MsgCountModelItem;->c:I

    return v0
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 29
    iget-object v0, p0, Lcom/alipay/android/phone/publicplatform/main/model/MsgCountModelItem;->b:Ljava/lang/String;

    return-object v0
.end method

.method public getType()I
    .locals 1

    .prologue
    .line 21
    iget v0, p0, Lcom/alipay/android/phone/publicplatform/main/model/MsgCountModelItem;->a:I

    return v0
.end method

.method public setCount(I)V
    .locals 0
    .parameter

    .prologue
    .line 41
    iput p1, p0, Lcom/alipay/android/phone/publicplatform/main/model/MsgCountModelItem;->c:I

    .line 42
    return-void
.end method

.method public setId(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 33
    iput-object p1, p0, Lcom/alipay/android/phone/publicplatform/main/model/MsgCountModelItem;->b:Ljava/lang/String;

    .line 34
    return-void
.end method

.method public setType(I)V
    .locals 0
    .parameter

    .prologue
    .line 25
    iput p1, p0, Lcom/alipay/android/phone/publicplatform/main/model/MsgCountModelItem;->a:I

    .line 26
    return-void
.end method

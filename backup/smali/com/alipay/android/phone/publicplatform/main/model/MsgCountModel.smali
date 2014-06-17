.class public Lcom/alipay/android/phone/publicplatform/main/model/MsgCountModel;
.super Ljava/lang/Object;
.source "MsgCountModel.java"


# static fields
.field public static final MSG_COUNT_MODEL_TYPE_NUM:I = 0x2

.field public static final MSG_COUNT_MODEL_TYPE_POINT:I = 0x1


# instance fields
.field private a:I

.field private b:I

.field private c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/alipay/android/phone/publicplatform/main/model/MsgCountModelItem;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(II)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/alipay/android/phone/publicplatform/main/model/MsgCountModel;->c:Ljava/util/List;

    .line 24
    iput p1, p0, Lcom/alipay/android/phone/publicplatform/main/model/MsgCountModel;->a:I

    .line 25
    iput p2, p0, Lcom/alipay/android/phone/publicplatform/main/model/MsgCountModel;->b:I

    .line 26
    return-void
.end method


# virtual methods
.method public addItem(Lcom/alipay/android/phone/publicplatform/main/model/MsgCountModelItem;)V
    .locals 1
    .parameter

    .prologue
    .line 49
    iget-object v0, p0, Lcom/alipay/android/phone/publicplatform/main/model/MsgCountModel;->c:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 50
    return-void
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 29
    iget v0, p0, Lcom/alipay/android/phone/publicplatform/main/model/MsgCountModel;->a:I

    return v0
.end method

.method public getItems()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/alipay/android/phone/publicplatform/main/model/MsgCountModelItem;",
            ">;"
        }
    .end annotation

    .prologue
    .line 45
    iget-object v0, p0, Lcom/alipay/android/phone/publicplatform/main/model/MsgCountModel;->c:Ljava/util/List;

    return-object v0
.end method

.method public getTyle()I
    .locals 1

    .prologue
    .line 37
    iget v0, p0, Lcom/alipay/android/phone/publicplatform/main/model/MsgCountModel;->b:I

    return v0
.end method

.method public setCount(I)V
    .locals 0
    .parameter

    .prologue
    .line 33
    iput p1, p0, Lcom/alipay/android/phone/publicplatform/main/model/MsgCountModel;->a:I

    .line 34
    return-void
.end method

.method public setTyle(I)V
    .locals 0
    .parameter

    .prologue
    .line 41
    iput p1, p0, Lcom/alipay/android/phone/publicplatform/main/model/MsgCountModel;->b:I

    .line 42
    return-void
.end method

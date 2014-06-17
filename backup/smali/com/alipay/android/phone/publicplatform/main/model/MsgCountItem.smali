.class public Lcom/alipay/android/phone/publicplatform/main/model/MsgCountItem;
.super Ljava/lang/Object;
.source "MsgCountItem.java"


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;

.field private d:I


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    iput-object p1, p0, Lcom/alipay/android/phone/publicplatform/main/model/MsgCountItem;->a:Ljava/lang/String;

    .line 14
    iput-object p2, p0, Lcom/alipay/android/phone/publicplatform/main/model/MsgCountItem;->b:Ljava/lang/String;

    .line 15
    iput-object p3, p0, Lcom/alipay/android/phone/publicplatform/main/model/MsgCountItem;->c:Ljava/lang/String;

    .line 16
    iput p4, p0, Lcom/alipay/android/phone/publicplatform/main/model/MsgCountItem;->d:I

    .line 17
    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 37
    iget v0, p0, Lcom/alipay/android/phone/publicplatform/main/model/MsgCountItem;->d:I

    return v0
.end method

.method public getMsgNoteType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 25
    iget-object v0, p0, Lcom/alipay/android/phone/publicplatform/main/model/MsgCountItem;->b:Ljava/lang/String;

    return-object v0
.end method

.method public getPublicId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 19
    iget-object v0, p0, Lcom/alipay/android/phone/publicplatform/main/model/MsgCountItem;->a:Ljava/lang/String;

    return-object v0
.end method

.method public getWgtMsgId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 31
    iget-object v0, p0, Lcom/alipay/android/phone/publicplatform/main/model/MsgCountItem;->c:Ljava/lang/String;

    return-object v0
.end method

.method public setCount(I)V
    .locals 0
    .parameter

    .prologue
    .line 40
    iput p1, p0, Lcom/alipay/android/phone/publicplatform/main/model/MsgCountItem;->d:I

    .line 41
    return-void
.end method

.method public setMsgNoteType(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 28
    iput-object p1, p0, Lcom/alipay/android/phone/publicplatform/main/model/MsgCountItem;->b:Ljava/lang/String;

    .line 29
    return-void
.end method

.method public setPublicId(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 22
    iput-object p1, p0, Lcom/alipay/android/phone/publicplatform/main/model/MsgCountItem;->a:Ljava/lang/String;

    .line 23
    return-void
.end method

.method public setWgtMsgId(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 34
    iput-object p1, p0, Lcom/alipay/android/phone/publicplatform/main/model/MsgCountItem;->c:Ljava/lang/String;

    .line 35
    return-void
.end method

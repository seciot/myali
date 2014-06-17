.class public Lcom/alipay/mobile/framework/service/ext/security/bean/CellIdInfo;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = -0x328d48a84562a892L


# instance fields
.field private cid:I

.field private lac:I

.field private mcc:I

.field private mnc:I

.field private type:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getCid()I
    .locals 1

    iget v0, p0, Lcom/alipay/mobile/framework/service/ext/security/bean/CellIdInfo;->cid:I

    return v0
.end method

.method public getLac()I
    .locals 1

    iget v0, p0, Lcom/alipay/mobile/framework/service/ext/security/bean/CellIdInfo;->lac:I

    return v0
.end method

.method public getMcc()I
    .locals 1

    iget v0, p0, Lcom/alipay/mobile/framework/service/ext/security/bean/CellIdInfo;->mcc:I

    return v0
.end method

.method public getMnc()I
    .locals 1

    iget v0, p0, Lcom/alipay/mobile/framework/service/ext/security/bean/CellIdInfo;->mnc:I

    return v0
.end method

.method public getType()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/framework/service/ext/security/bean/CellIdInfo;->type:Ljava/lang/String;

    return-object v0
.end method

.method public setCid(I)V
    .locals 0

    iput p1, p0, Lcom/alipay/mobile/framework/service/ext/security/bean/CellIdInfo;->cid:I

    return-void
.end method

.method public setLac(I)V
    .locals 0

    iput p1, p0, Lcom/alipay/mobile/framework/service/ext/security/bean/CellIdInfo;->lac:I

    return-void
.end method

.method public setMcc(I)V
    .locals 0

    iput p1, p0, Lcom/alipay/mobile/framework/service/ext/security/bean/CellIdInfo;->mcc:I

    return-void
.end method

.method public setMnc(I)V
    .locals 0

    iput p1, p0, Lcom/alipay/mobile/framework/service/ext/security/bean/CellIdInfo;->mnc:I

    return-void
.end method

.method public setType(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/mobile/framework/service/ext/security/bean/CellIdInfo;->type:Ljava/lang/String;

    return-void
.end method

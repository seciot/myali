.class public Lcom/alipay/mobilesecurity/biz/gw/service/auth/model/info/PermPointInfo;
.super Ljava/lang/Object;


# instance fields
.field public checked:Z

.field public optional:Z

.field public pointId:I

.field public pointName:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getPointId()I
    .locals 1

    iget v0, p0, Lcom/alipay/mobilesecurity/biz/gw/service/auth/model/info/PermPointInfo;->pointId:I

    return v0
.end method

.method public getPointName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobilesecurity/biz/gw/service/auth/model/info/PermPointInfo;->pointName:Ljava/lang/String;

    return-object v0
.end method

.method public isChecked()Z
    .locals 1

    iget-boolean v0, p0, Lcom/alipay/mobilesecurity/biz/gw/service/auth/model/info/PermPointInfo;->checked:Z

    return v0
.end method

.method public isOptional()Z
    .locals 1

    iget-boolean v0, p0, Lcom/alipay/mobilesecurity/biz/gw/service/auth/model/info/PermPointInfo;->optional:Z

    return v0
.end method

.method public setChecked(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/alipay/mobilesecurity/biz/gw/service/auth/model/info/PermPointInfo;->checked:Z

    return-void
.end method

.method public setOptional(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/alipay/mobilesecurity/biz/gw/service/auth/model/info/PermPointInfo;->optional:Z

    return-void
.end method

.method public setPointId(I)V
    .locals 0

    iput p1, p0, Lcom/alipay/mobilesecurity/biz/gw/service/auth/model/info/PermPointInfo;->pointId:I

    return-void
.end method

.method public setPointName(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/mobilesecurity/biz/gw/service/auth/model/info/PermPointInfo;->pointName:Ljava/lang/String;

    return-void
.end method

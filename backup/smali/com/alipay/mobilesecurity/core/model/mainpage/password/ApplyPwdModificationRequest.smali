.class public Lcom/alipay/mobilesecurity/core/model/mainpage/password/ApplyPwdModificationRequest;
.super Lcom/alipay/mobilesecurity/common/service/model/ToString;


# instance fields
.field public loginId:Ljava/lang/String;

.field public oldPwd:Ljava/lang/String;

.field public pwd:Ljava/lang/String;

.field public pwdType:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/alipay/mobilesecurity/common/service/model/ToString;-><init>()V

    return-void
.end method


# virtual methods
.method public getLoginId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobilesecurity/core/model/mainpage/password/ApplyPwdModificationRequest;->loginId:Ljava/lang/String;

    return-object v0
.end method

.method public getOldPwd()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobilesecurity/core/model/mainpage/password/ApplyPwdModificationRequest;->oldPwd:Ljava/lang/String;

    return-object v0
.end method

.method public getPwd()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobilesecurity/core/model/mainpage/password/ApplyPwdModificationRequest;->pwd:Ljava/lang/String;

    return-object v0
.end method

.method public getPwdType()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobilesecurity/core/model/mainpage/password/ApplyPwdModificationRequest;->pwdType:Ljava/lang/String;

    return-object v0
.end method

.method public setLoginId(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/mobilesecurity/core/model/mainpage/password/ApplyPwdModificationRequest;->loginId:Ljava/lang/String;

    return-void
.end method

.method public setOldPwd(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/mobilesecurity/core/model/mainpage/password/ApplyPwdModificationRequest;->oldPwd:Ljava/lang/String;

    return-void
.end method

.method public setPwd(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/mobilesecurity/core/model/mainpage/password/ApplyPwdModificationRequest;->pwd:Ljava/lang/String;

    return-void
.end method

.method public setPwdType(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/mobilesecurity/core/model/mainpage/password/ApplyPwdModificationRequest;->pwdType:Ljava/lang/String;

    return-void
.end method

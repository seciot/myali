.class public abstract Lcom/alipay/mobile/deviceAuthorization/ui/MockBaseAuthActivity;
.super Lcom/alipay/mobile/framework/app/ui/BaseActivity;

# interfaces
.implements Lcom/alipay/mobile/commonui/widget/APSixNumberPwdInputBox$PWDInputListener;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/alipay/mobile/framework/app/ui/BaseActivity;-><init>()V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 5

    const/4 v4, 0x1

    invoke-super {p0, p1}, Lcom/alipay/mobile/framework/app/ui/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    new-instance v0, Lcom/alipay/mobilesecurity/core/model/approve/PrepareApproveRes;

    invoke-direct {v0}, Lcom/alipay/mobilesecurity/core/model/approve/PrepareApproveRes;-><init>()V

    const-string/jumbo v1, "\u8d26\u6237\u6388\u6743"

    iput-object v1, v0, Lcom/alipay/mobilesecurity/core/model/approve/PrepareApproveRes;->approvePageTitle:Ljava/lang/String;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, v0, Lcom/alipay/mobilesecurity/core/model/approve/PrepareApproveRes;->approveTextList:Ljava/util/List;

    iput-boolean v4, v0, Lcom/alipay/mobilesecurity/core/model/approve/PrepareApproveRes;->needPassword:Z

    sget-object v1, Lcom/alipay/mobile/deviceAuthorization/a;->a:Ljava/lang/String;

    iput-object v1, v0, Lcom/alipay/mobilesecurity/core/model/approve/PrepareApproveRes;->passwordType:Ljava/lang/String;

    const-string/jumbo v1, "\u6b4c\u6708\u6388\u6743\u5bf9\u8c61"

    iput-object v1, v0, Lcom/alipay/mobilesecurity/core/model/approve/PrepareApproveRes;->authTargetTitle:Ljava/lang/String;

    const-string/jumbo v1, "\u8fd9\u662f\u6b4c\u6708\u6b63\u5728\u6d4b\u8bd5\u7684\u6c38\u4e45\u6388\u6743\u6a21\u62df,\u554a\u963f\u91cc\u5df4\u5df4\u4e0d\u5f97\u6cd5\u989d\u7684\u98ce\u963f\u5927\u5927\u6cd5\u5e08\u5927\u6cd5\u5e08\u5927\u6cd5\u5e08\u5927\u6cd5\u5e08\u591a\u53d1\u70b9\u6c99\u53d1\u4e0a\u4e1c\u98ce\u6865\u800c\u653e\u5f03\u997f"

    iput-object v1, v0, Lcom/alipay/mobilesecurity/core/model/approve/PrepareApproveRes;->authTargetDescription:Ljava/lang/String;

    const-string/jumbo v1, "\u6b4c\u6708\u5c06\u83b7\u5f97\u60a8\u7684\u4ee5\u4e0b\u6743\u9650\uff1a"

    iput-object v1, v0, Lcom/alipay/mobilesecurity/core/model/approve/PrepareApproveRes;->authOptionTitle:Ljava/lang/String;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    new-instance v2, Lcom/alipay/mobilesecurity/common/spi/approve/AuthOption;

    invoke-direct {v2}, Lcom/alipay/mobilesecurity/common/spi/approve/AuthOption;-><init>()V

    const-string/jumbo v3, "1"

    iput-object v3, v2, Lcom/alipay/mobilesecurity/common/spi/approve/AuthOption;->optionKey:Ljava/lang/String;

    const-string/jumbo v3, "\u83b7\u5f97\u60a8\u7684\u4e2a\u4eba\u4fe1\u606f"

    iput-object v3, v2, Lcom/alipay/mobilesecurity/common/spi/approve/AuthOption;->optionText:Ljava/lang/String;

    iput-boolean v4, v2, Lcom/alipay/mobilesecurity/common/spi/approve/AuthOption;->defaultChecked:Z

    iput-boolean v4, v2, Lcom/alipay/mobilesecurity/common/spi/approve/AuthOption;->forceChecked:Z

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v2, Lcom/alipay/mobilesecurity/common/spi/approve/AuthOption;

    invoke-direct {v2}, Lcom/alipay/mobilesecurity/common/spi/approve/AuthOption;-><init>()V

    const-string/jumbo v3, "2"

    iput-object v3, v2, Lcom/alipay/mobilesecurity/common/spi/approve/AuthOption;->optionKey:Ljava/lang/String;

    const-string/jumbo v3, "\u83b7\u5f97\u60a8\u7684\u5b89\u5168\u4fe1\u606f"

    iput-object v3, v2, Lcom/alipay/mobilesecurity/common/spi/approve/AuthOption;->optionText:Ljava/lang/String;

    iput-boolean v4, v2, Lcom/alipay/mobilesecurity/common/spi/approve/AuthOption;->defaultChecked:Z

    const/4 v3, 0x0

    iput-boolean v3, v2, Lcom/alipay/mobilesecurity/common/spi/approve/AuthOption;->forceChecked:Z

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iput-object v1, v0, Lcom/alipay/mobilesecurity/core/model/approve/PrepareApproveRes;->authOptions:Ljava/util/List;

    const-string/jumbo v1, "\u53d6\u6d88"

    iput-object v1, v0, Lcom/alipay/mobilesecurity/core/model/approve/PrepareApproveRes;->cancelButtonText:Ljava/lang/String;

    const-string/jumbo v1, "\u6388\u6743"

    iput-object v1, v0, Lcom/alipay/mobilesecurity/core/model/approve/PrepareApproveRes;->confirmButtonText:Ljava/lang/String;

    return-void
.end method

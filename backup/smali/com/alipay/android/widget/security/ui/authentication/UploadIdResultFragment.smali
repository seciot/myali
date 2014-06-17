.class public Lcom/alipay/android/widget/security/ui/authentication/UploadIdResultFragment;
.super Lcom/alipay/android/widget/security/ui/authentication/BaseAuthenticationFragment;

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation build Lcom/googlecode/androidannotations/annotations/EFragment;
    resName = "authentication_upload_result"
.end annotation


# instance fields
.field protected d:Lcom/alipay/mobile/commonui/widget/APButton;
    .annotation build Lcom/googlecode/androidannotations/annotations/ViewById;
        resName = "complete_btn"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/alipay/android/widget/security/ui/authentication/BaseAuthenticationFragment;-><init>()V

    return-void
.end method


# virtual methods
.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 9

    invoke-super {p0, p1}, Lcom/alipay/android/widget/security/ui/authentication/BaseAuthenticationFragment;->onActivityCreated(Landroid/os/Bundle;)V

    iget-object v0, p0, Lcom/alipay/android/widget/security/ui/authentication/UploadIdResultFragment;->d:Lcom/alipay/mobile/commonui/widget/APButton;

    invoke-virtual {v0, p0}, Lcom/alipay/mobile/commonui/widget/APButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {p0}, Lcom/alipay/android/widget/security/ui/authentication/UploadIdResultFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    sget-object v1, Lcom/alipay/mobile/common/logagent/BehaviourIdEnum;->OPENPAGE:Lcom/alipay/mobile/common/logagent/BehaviourIdEnum;

    const-string/jumbo v2, "-"

    const-string/jumbo v3, "-"

    const-string/jumbo v4, "20000038"

    const-string/jumbo v5, "-"

    const-string/jumbo v6, "-"

    const-string/jumbo v7, "uploadPaperView"

    const-string/jumbo v8, "-"

    invoke-static/range {v0 .. v8}, Lcom/alipay/mobile/common/logagent/AlipayLogAgent;->writeLog(Landroid/content/Context;Lcom/alipay/mobile/common/logagent/BehaviourIdEnum;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1

    const/4 v0, 0x1

    invoke-static {v0}, Lcom/alipay/android/widget/security/ui/authentication/UploadIdResultFragment;->a(Z)V

    invoke-virtual {p0}, Lcom/alipay/android/widget/security/ui/authentication/UploadIdResultFragment;->b()V

    return-void
.end method

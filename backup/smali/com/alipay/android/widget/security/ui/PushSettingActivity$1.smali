.class Lcom/alipay/android/widget/security/ui/PushSettingActivity$1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/alipay/mobile/commonui/widget/APAbsTableView$OnSwitchListener;


# instance fields
.field final synthetic a:Lcom/alipay/android/widget/security/ui/PushSettingActivity;


# direct methods
.method constructor <init>(Lcom/alipay/android/widget/security/ui/PushSettingActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/android/widget/security/ui/PushSettingActivity$1;->a:Lcom/alipay/android/widget/security/ui/PushSettingActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSwitchListener(ZLandroid/view/View;)V
    .locals 2

    if-nez p1, :cond_0

    iget-object v0, p0, Lcom/alipay/android/widget/security/ui/PushSettingActivity$1;->a:Lcom/alipay/android/widget/security/ui/PushSettingActivity;

    iget-object v0, v0, Lcom/alipay/android/widget/security/ui/PushSettingActivity;->d:Lcom/alipay/mobile/commonui/widget/APTextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/commonui/widget/APTextView;->setVisibility(I)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/alipay/android/widget/security/ui/PushSettingActivity$1;->a:Lcom/alipay/android/widget/security/ui/PushSettingActivity;

    iget-object v0, v0, Lcom/alipay/android/widget/security/ui/PushSettingActivity;->d:Lcom/alipay/mobile/commonui/widget/APTextView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/commonui/widget/APTextView;->setVisibility(I)V

    goto :goto_0
.end method

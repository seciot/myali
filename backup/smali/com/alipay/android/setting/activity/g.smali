.class final Lcom/alipay/android/setting/activity/g;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Lcom/alipay/android/setting/activity/BaseSettingActivity;


# direct methods
.method constructor <init>(Lcom/alipay/android/setting/activity/BaseSettingActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/android/setting/activity/g;->a:Lcom/alipay/android/setting/activity/BaseSettingActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    iget-object v0, p0, Lcom/alipay/android/setting/activity/g;->a:Lcom/alipay/android/setting/activity/BaseSettingActivity;

    invoke-virtual {v0}, Lcom/alipay/android/setting/activity/BaseSettingActivity;->finish()V

    return-void
.end method

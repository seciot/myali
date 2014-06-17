.class final Lcom/alipay/android/setting/activity/i;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Landroid/widget/ArrayAdapter;

.field final synthetic b:Lcom/alipay/android/setting/activity/PaymentChannelActivity;


# direct methods
.method constructor <init>(Lcom/alipay/android/setting/activity/PaymentChannelActivity;Landroid/widget/ArrayAdapter;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/android/setting/activity/i;->b:Lcom/alipay/android/setting/activity/PaymentChannelActivity;

    iput-object p2, p0, Lcom/alipay/android/setting/activity/i;->a:Landroid/widget/ArrayAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 3

    iget-object v0, p0, Lcom/alipay/android/setting/activity/i;->b:Lcom/alipay/android/setting/activity/PaymentChannelActivity;

    iget-object v1, p0, Lcom/alipay/android/setting/activity/i;->a:Landroid/widget/ArrayAdapter;

    iget-object v2, p0, Lcom/alipay/android/setting/activity/i;->b:Lcom/alipay/android/setting/activity/PaymentChannelActivity;

    invoke-static {v0, v1, v2}, Lcom/alipay/android/setting/activity/PaymentChannelActivity;->a(Lcom/alipay/android/setting/activity/PaymentChannelActivity;Landroid/widget/ArrayAdapter;Landroid/content/Context;)V

    return-void
.end method

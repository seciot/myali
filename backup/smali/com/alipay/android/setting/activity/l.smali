.class final Lcom/alipay/android/setting/activity/l;
.super Ljava/lang/Object;


# instance fields
.field a:Ljava/lang/String;

.field b:Ljava/lang/String;

.field c:Z

.field d:Z

.field e:Ljava/util/ArrayList;

.field final synthetic f:Lcom/alipay/android/setting/activity/PaymentChannelActivity;


# direct methods
.method private constructor <init>(Lcom/alipay/android/setting/activity/PaymentChannelActivity;)V
    .locals 1

    iput-object p1, p0, Lcom/alipay/android/setting/activity/l;->f:Lcom/alipay/android/setting/activity/PaymentChannelActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/alipay/android/setting/activity/l;->e:Ljava/util/ArrayList;

    return-void
.end method

.method synthetic constructor <init>(Lcom/alipay/android/setting/activity/PaymentChannelActivity;B)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/alipay/android/setting/activity/l;-><init>(Lcom/alipay/android/setting/activity/PaymentChannelActivity;)V

    return-void
.end method

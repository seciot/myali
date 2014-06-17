.class public final Lcom/alipay/mobile/android/avatar/b/a;
.super Ljava/lang/Object;


# instance fields
.field public a:Landroid/content/SharedPreferences;

.field private b:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/alipay/mobile/android/avatar/b/a;->b:Landroid/content/Context;

    iget-object v0, p0, Lcom/alipay/mobile/android/avatar/b/a;->b:Landroid/content/Context;

    const-string/jumbo v1, "SETTING_Infos"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/android/avatar/b/a;->a:Landroid/content/SharedPreferences;

    return-void
.end method

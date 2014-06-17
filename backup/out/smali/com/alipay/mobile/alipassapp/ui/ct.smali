.class final Lcom/alipay/mobile/alipassapp/ui/ct;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/alipay/mobile/alipassapp/ui/AlipassRemindActivity;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/alipassapp/ui/AlipassRemindActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/mobile/alipassapp/ui/ct;->a:Lcom/alipay/mobile/alipassapp/ui/AlipassRemindActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/alipassapp/ui/ct;->a:Lcom/alipay/mobile/alipassapp/ui/AlipassRemindActivity;

    invoke-virtual {v0}, Lcom/alipay/mobile/alipassapp/ui/AlipassRemindActivity;->finish()V

    return-void
.end method

.class final Lcom/alipay/mobile/framework/service/ext/security/a;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/ServiceConnection;


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 1

    invoke-static {p2}, Lcom/qihoo360/contacts/service/ITxlUiService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/qihoo360/contacts/service/ITxlUiService;

    move-result-object v0

    invoke-static {v0}, Lcom/alipay/mobile/framework/service/ext/security/QihooGuardService;->access$002(Lcom/qihoo360/contacts/service/ITxlUiService;)Lcom/qihoo360/contacts/service/ITxlUiService;

    return-void
.end method

.method public final onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 1

    const/4 v0, 0x0

    invoke-static {v0}, Lcom/alipay/mobile/framework/service/ext/security/QihooGuardService;->access$002(Lcom/qihoo360/contacts/service/ITxlUiService;)Lcom/qihoo360/contacts/service/ITxlUiService;

    invoke-static {v0}, Lcom/alipay/mobile/framework/service/ext/security/QihooGuardService;->access$102(Landroid/content/ServiceConnection;)Landroid/content/ServiceConnection;

    return-void
.end method

.class final Lcom/alipay/mobile/security/securitycommon/a;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:I

.field final synthetic b:[Ljava/lang/String;

.field final synthetic c:Ljava/lang/String;

.field final synthetic d:I

.field final synthetic e:Ljava/lang/String;

.field final synthetic f:Lcom/alipay/mobile/security/securitycommon/AutoReadSmsCheckCode;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/security/securitycommon/AutoReadSmsCheckCode;I[Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/mobile/security/securitycommon/a;->f:Lcom/alipay/mobile/security/securitycommon/AutoReadSmsCheckCode;

    iput p2, p0, Lcom/alipay/mobile/security/securitycommon/a;->a:I

    iput-object p3, p0, Lcom/alipay/mobile/security/securitycommon/a;->b:[Ljava/lang/String;

    iput-object p4, p0, Lcom/alipay/mobile/security/securitycommon/a;->c:Ljava/lang/String;

    iput p5, p0, Lcom/alipay/mobile/security/securitycommon/a;->d:I

    iput-object p6, p0, Lcom/alipay/mobile/security/securitycommon/a;->e:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 14

    const-wide/16 v12, 0x0

    const/4 v11, 0x1

    const/4 v10, 0x0

    invoke-static {}, Lcom/alipay/mobile/framework/AlipayApplication;->getInstance()Lcom/alipay/mobile/framework/AlipayApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/AlipayApplication;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v0

    invoke-interface {v0}, Lcom/alipay/mobile/framework/MicroApplicationContext;->getApplicationContext()Lcom/alipay/mobile/framework/AlipayApplication;

    move-result-object v5

    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    iget v0, p0, Lcom/alipay/mobile/security/securitycommon/a;->a:I

    mul-int/lit16 v0, v0, 0x3e8

    int-to-long v8, v0

    iget-object v0, p0, Lcom/alipay/mobile/security/securitycommon/a;->f:Lcom/alipay/mobile/security/securitycommon/AutoReadSmsCheckCode;

    iget-object v1, p0, Lcom/alipay/mobile/security/securitycommon/a;->f:Lcom/alipay/mobile/security/securitycommon/AutoReadSmsCheckCode;

    #calls: Lcom/alipay/mobile/security/securitycommon/AutoReadSmsCheckCode;->a(Landroid/content/Context;)J
    invoke-static {v1, v5}, Lcom/alipay/mobile/security/securitycommon/AutoReadSmsCheckCode;->access$100(Lcom/alipay/mobile/security/securitycommon/AutoReadSmsCheckCode;Landroid/content/Context;)J

    move-result-wide v1

    #setter for: Lcom/alipay/mobile/security/securitycommon/AutoReadSmsCheckCode;->e:J
    invoke-static {v0, v1, v2}, Lcom/alipay/mobile/security/securitycommon/AutoReadSmsCheckCode;->access$002(Lcom/alipay/mobile/security/securitycommon/AutoReadSmsCheckCode;J)J

    iget-object v0, p0, Lcom/alipay/mobile/security/securitycommon/a;->f:Lcom/alipay/mobile/security/securitycommon/AutoReadSmsCheckCode;

    iget-object v1, p0, Lcom/alipay/mobile/security/securitycommon/a;->b:[Ljava/lang/String;

    iget-object v2, p0, Lcom/alipay/mobile/security/securitycommon/a;->c:Ljava/lang/String;

    iget v3, p0, Lcom/alipay/mobile/security/securitycommon/a;->d:I

    iget-object v4, p0, Lcom/alipay/mobile/security/securitycommon/a;->e:Ljava/lang/String;

    invoke-static/range {v0 .. v9}, Lcom/alipay/mobile/security/securitycommon/AutoReadSmsCheckCode;->access$200(Lcom/alipay/mobile/security/securitycommon/AutoReadSmsCheckCode;[Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Landroid/content/Context;JJ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    iget-object v0, p0, Lcom/alipay/mobile/security/securitycommon/a;->f:Lcom/alipay/mobile/security/securitycommon/AutoReadSmsCheckCode;

    #setter for: Lcom/alipay/mobile/security/securitycommon/AutoReadSmsCheckCode;->c:Z
    invoke-static {v0, v10}, Lcom/alipay/mobile/security/securitycommon/AutoReadSmsCheckCode;->access$302(Lcom/alipay/mobile/security/securitycommon/AutoReadSmsCheckCode;Z)Z

    iget-object v0, p0, Lcom/alipay/mobile/security/securitycommon/a;->f:Lcom/alipay/mobile/security/securitycommon/AutoReadSmsCheckCode;

    #setter for: Lcom/alipay/mobile/security/securitycommon/AutoReadSmsCheckCode;->b:Z
    invoke-static {v0, v11}, Lcom/alipay/mobile/security/securitycommon/AutoReadSmsCheckCode;->access$402(Lcom/alipay/mobile/security/securitycommon/AutoReadSmsCheckCode;Z)Z

    iget-object v0, p0, Lcom/alipay/mobile/security/securitycommon/a;->f:Lcom/alipay/mobile/security/securitycommon/AutoReadSmsCheckCode;

    #setter for: Lcom/alipay/mobile/security/securitycommon/AutoReadSmsCheckCode;->g:J
    invoke-static {v0, v12, v13}, Lcom/alipay/mobile/security/securitycommon/AutoReadSmsCheckCode;->access$502(Lcom/alipay/mobile/security/securitycommon/AutoReadSmsCheckCode;J)J

    :goto_0
    return-void

    :catch_0
    move-exception v0

    iget-object v0, p0, Lcom/alipay/mobile/security/securitycommon/a;->f:Lcom/alipay/mobile/security/securitycommon/AutoReadSmsCheckCode;

    #setter for: Lcom/alipay/mobile/security/securitycommon/AutoReadSmsCheckCode;->c:Z
    invoke-static {v0, v10}, Lcom/alipay/mobile/security/securitycommon/AutoReadSmsCheckCode;->access$302(Lcom/alipay/mobile/security/securitycommon/AutoReadSmsCheckCode;Z)Z

    iget-object v0, p0, Lcom/alipay/mobile/security/securitycommon/a;->f:Lcom/alipay/mobile/security/securitycommon/AutoReadSmsCheckCode;

    #setter for: Lcom/alipay/mobile/security/securitycommon/AutoReadSmsCheckCode;->b:Z
    invoke-static {v0, v11}, Lcom/alipay/mobile/security/securitycommon/AutoReadSmsCheckCode;->access$402(Lcom/alipay/mobile/security/securitycommon/AutoReadSmsCheckCode;Z)Z

    iget-object v0, p0, Lcom/alipay/mobile/security/securitycommon/a;->f:Lcom/alipay/mobile/security/securitycommon/AutoReadSmsCheckCode;

    #setter for: Lcom/alipay/mobile/security/securitycommon/AutoReadSmsCheckCode;->g:J
    invoke-static {v0, v12, v13}, Lcom/alipay/mobile/security/securitycommon/AutoReadSmsCheckCode;->access$502(Lcom/alipay/mobile/security/securitycommon/AutoReadSmsCheckCode;J)J

    goto :goto_0

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/alipay/mobile/security/securitycommon/a;->f:Lcom/alipay/mobile/security/securitycommon/AutoReadSmsCheckCode;

    #setter for: Lcom/alipay/mobile/security/securitycommon/AutoReadSmsCheckCode;->c:Z
    invoke-static {v1, v10}, Lcom/alipay/mobile/security/securitycommon/AutoReadSmsCheckCode;->access$302(Lcom/alipay/mobile/security/securitycommon/AutoReadSmsCheckCode;Z)Z

    iget-object v1, p0, Lcom/alipay/mobile/security/securitycommon/a;->f:Lcom/alipay/mobile/security/securitycommon/AutoReadSmsCheckCode;

    #setter for: Lcom/alipay/mobile/security/securitycommon/AutoReadSmsCheckCode;->b:Z
    invoke-static {v1, v11}, Lcom/alipay/mobile/security/securitycommon/AutoReadSmsCheckCode;->access$402(Lcom/alipay/mobile/security/securitycommon/AutoReadSmsCheckCode;Z)Z

    iget-object v1, p0, Lcom/alipay/mobile/security/securitycommon/a;->f:Lcom/alipay/mobile/security/securitycommon/AutoReadSmsCheckCode;

    #setter for: Lcom/alipay/mobile/security/securitycommon/AutoReadSmsCheckCode;->g:J
    invoke-static {v1, v12, v13}, Lcom/alipay/mobile/security/securitycommon/AutoReadSmsCheckCode;->access$502(Lcom/alipay/mobile/security/securitycommon/AutoReadSmsCheckCode;J)J

    throw v0
.end method

class HomesController < ApplicationController
  def index
    @email = UserMailer.receive('Delivered-To: tin.tran0519@gmail.com
Received: by 10.223.185.125 with SMTP id b58csp3429473wrg;
        Wed, 13 Dec 2017 11:59:13 -0800 (PST)
X-Google-Smtp-Source: ACJfBouzFj3J93R93CPpEug7XME8fkk817KRt7k9z02iZ4ihaFDHNx4h+3lYOmvL8fNd9pIUt6Py
X-Received: by 10.55.78.15 with SMTP id c15mr6916098qkb.105.1513195153584;
        Wed, 13 Dec 2017 11:59:13 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1513195153; cv=none;
        d=google.com; s=arc-20160816;
        b=SuLNfBzb1JaNeAym2exVH5dxaR9RFvp+3Jm6rAjCLonuVp+yvEdrVrZ2JqpnfhZyaj
         kjiMZAVeUZgtYxfiAdXyTqAYHTnbcASWmD3Yht+3Lcb8OBh7LUMOwK628BLvu8zmLyxZ
         2JtbU5dqHxcBzEJA6PeGzVcl9Lo1lAJrJZ9Ro8UzP0rKtcrPq8Wgz47pZvYrbUke2WLc
         zYewBaCe1mrkC4/E4sGYAp3qmUXji47iHW4MlPRP/zkWUzkZxA+ludoW306wH0cRKHbS
         tCC6X1iFIQnowzeHIQ1HP2kO7ok3Kgkt0/BEdlbLo7x8JzkGdtmYITtNWd7ag0RncXQa
         pj+w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=message-id:subject:date:reply-to:to:from:mime-version
         :arc-authentication-results;
        bh=SGUtMoivSgnGN6vPU3qiyguQ6sILIAkj0bBtIwLpa5s=;
        b=hVqU2m3E+2ezWsMrbrbjOAiLOBUf4GOtSad7y2Qbcqn6BDexz+dxNn+izfJpcOrnOn
         ZqzV76GccSMW4MkJSTslrMYQkHenljOSYlQiLbOnj7Gi+nZdS8XOyJN6GtSFVV1BWWRT
         QH8gQBOd6pRWB5dl6g4+3q9bYEAj81yRe2mZxkXFhlM+IboK5xh08g7Y0LwHJYd6rG/f
         AtHFVIb7NO7sCJjdYIJyl1o5U/3nxyzdnVN47+V6jqe+/1TBCMJosXc86vDYAkAPy6K2
         MYXlvI796OSpkVfSvsTjHezeEMnGAyU4pLFuMGz2IUgObHGin3akPTtQiJI/OW6E45aj
         VaZA==
ARC-Authentication-Results: i=1; mx.google.com;
       spf=pass (google.com: domain of enterprise@trm.brassring.com designates 66.77.22.2 as permitted sender) smtp.mailfrom=Enterprise@trm.brassring.com
Return-Path: <Enterprise@trm.brassring.com>
Received: from pst01opemail01.ops.hosting.knxa (smtprelay1.brassring.com. [66.77.22.2])
        by mx.google.com with ESMTPS id l12si103082qkl.161.2017.12.13.11.59.13
        for <tin.tran0519@gmail.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 13 Dec 2017 11:59:13 -0800 (PST)
Received-SPF: pass (google.com: domain of enterprise@trm.brassring.com designates 66.77.22.2 as permitted sender) client-ip=66.77.22.2;
Authentication-Results: mx.google.com;
       spf=pass (google.com: domain of enterprise@trm.brassring.com designates 66.77.22.2 as permitted sender) smtp.mailfrom=Enterprise@trm.brassring.com
Received: from pst01opemail01.ops.hosting.knxa (localhost [127.0.0.1]) by pst01opemail01.ops.hosting.knxa (Postfix) with ESMTP id 42241A139B for <tin.tran0519@gmail.com>; Wed, 13 Dec 2017 14:59:13 -0500 (EST)
Received: from PVA-BRENCOM-22.prod.brassring.com (unknown [192.168.15.5]) by pst01opemail01.ops.hosting.knxa (Postfix) with ESMTP id 409F8A1390 for <tin.tran0519@gmail.com>; Wed, 13 Dec 2017 14:59:13 -0500 (EST)
Received: from PVA-BRENCOM-22 ([127.0.0.1]) by PVA-BRENCOM-22.prod.brassring.com with Microsoft SMTPSVC(7.5.7601.17514);
   Wed, 13 Dec 2017 14:59:13 -0500
MIME-Version: 1.0
From: "AutomationManager@brassring.com" <Enterprise@trm.brassring.com>
To: tin.tran0519@gmail.com
Reply-To: AutomationManager@brassring.com
Date: 13 Dec 2017 14:59:13 -0500
Subject: GUESS - Application Received
Content-Type: multipart/alternative; boundary=--boundary_6149_f3d75d47-3f0b-495b-8c05-e11d1d876fbd
Message-ID: <PVA-BRENCOM-22Pcrp20000ee43@PVA-BRENCOM-22.prod.brassring.com>
X-OriginalArrivalTime: 13 Dec 2017 19:59:13.0152 (UTC) FILETIME=[D909F000:01D3744C]
X-Virus-Scanned: ClamAV using ClamSMTP

----boundary_6149_f3d75d47-3f0b-495b-8c05-e11d1d876fbd
Content-Type: text/plain
Content-Transfer-Encoding: base64

DQoNCg0KDQoNCkhpIFRpbiwNCg0KV2Ugd291bGQgbGlrZSB0byB0YWtlIHRoaXMgdGltZSB0byBl
eHByZXNzIG91ciBhcHByZWNpYXRpb24gdG8geW91LiBXZSB3aWxsIHJldmlldyB5b3VyIHNraWxs
cyBhbmQgZXhwZXJpZW5jZSB0byBzZWUgaWYgdGhlcmUgaXMgYSBtYXRjaCB3aXRoIG91ciBvcGVu
IHBvc2l0aW9ucy4NCg0KSWYgdGhlcmUgaXMsIHlvdSB3aWxsIGJlIGNvbnRhY3RlZCBieSBhIG1l
bWJlciBvZiBvdXIgcmVjcnVpdG1lbnQgdGVhbS4NCg0KVGhhbmsgWW91IQ0KDQpHVUVTUyBDb3Jw
b3JhdGUgUmVjcnVpdGluZw0KIA0K
----boundary_6149_f3d75d47-3f0b-495b-8c05-e11d1d876fbd
Content-Type: text/html; charset=utf-8
Content-Transfer-Encoding: base64

PGRpdiBzdHlsZT0nbWFyZ2luOjAgMCAwIDAnID48cCBhbGlnbj0ibGVmdCIgZGlyPSJsdHIiPjxm
b250IHN0eWxlPSJjb2xvcjp1bmRlZmluZWQ7Zm9udC1mYW1pbHk6dGFob21hLGdlbmV2YSxzYW5z
LXNlcmlmO3NpemU6dW5kZWZpbmVkOyI+PGZvbnQgc3R5bGU9ImZvbnQtc2l6ZToxM3B4OyI+PGlt
ZyBhbHQ9IiIgc3JjPSJodHRwczovL3RybS5icmFzc3JpbmcuY29tL0pldFN0cmVhbS81MDAvUHJl
c2VudGF0aW9uL1RlbXBsYXRlL0FTUC9DYW5kaWRhdGUvVG9kby9DYW5kaWRhdGVQcm9maWxlRHdu
bGQuYXNwP2ZpbGVuYW1lPSU0MDk1SUw0aTJKdTJjTGNJUFVVY0VkeXlPYjg1VDVSMUwxenZJJTJm
QldDVWcxcVZmVSUyYk81ektWeW9UZTVGbGRHREhSRSUyYnhLTEl0bndCNWpkbW1PbUNmTUE5QkE2
Y0RXUzdkbU5uZW5XZlJIdTglMmYxOHhpWlNwaiUyZjI0ME43OGEwWnFYYlR4dUZVTTlvbnBIZ1k3
M3V0UFVLcEhFa0w4QXViSm1Db2pHa0xPY0MzUEswdEpmNDUxdzMlMmJOcXVpbWtHc2xRYUtHeSUy
YkUza2s1MG1yY2I1eTlYbVBWWG9VQ1laVFNBVGllMkx0dlBQcHNSVW4zNGtxYkh3bzFNa0F0b0U4
cWc4VlJvMmVwREZXc2tNNGtWcDZmakdJekVDNDl5VGluU2hsdFdxejlzejR5RE0lM2QmRW1haWxU
ZW1wbGF0ZT10cnVlIiBzdHlsZT0id2lkdGg6IDkwcHg7IGhlaWdodDogNzhweDsiIC8+PGJyIC8+
PGJyIC8+PGJyIC8+PGJyIC8+PGJyIC8+SGkgVGluLDwvZm9udD48L2ZvbnQ+PGJyIC8+PGJyIC8+
PGZvbnQgc3R5bGU9IkZPTlQtRkFNSUxZOiBBcmlhbDsgRk9OVC1TSVpFOiAxM3B4Ij48Zm9udCBz
dHlsZT0iY29sb3I6dW5kZWZpbmVkO2ZvbnQtZmFtaWx5OnRhaG9tYSxnZW5ldmEsc2Fucy1zZXJp
ZjtzaXplOnVuZGVmaW5lZDsiPldlIHdvdWxkIGxpa2UgdG8gdGFrZSB0aGlzIHRpbWUgdG8gZXhw
cmVzcyBvdXIgYXBwcmVjaWF0aW9uIHRvIHlvdS4gV2Ugd2lsbCByZXZpZXcgeW91ciBza2lsbHMg
YW5kIGV4cGVyaWVuY2UgdG8gc2VlIGlmIHRoZXJlIGlzIGEgbWF0Y2ggd2l0aCBvdXIgb3BlbiBw
b3NpdGlvbnMuPGJyIC8+PGJyIC8+SWYgdGhlcmUgaXMsIHlvdSB3aWxsIGJlIGNvbnRhY3RlZCBi
eSBhIG1lbWJlciBvZiBvdXIgcmVjcnVpdG1lbnQgdGVhbS48YnIgLz48YnIgLz5UaGFuayBZb3Uh
PGJyIC8+PGJyIC8+R1VFU1MgQ29ycG9yYXRlIFJlY3J1aXRpbmc8L2ZvbnQ+PC9mb250PjxiciAv
PiA8L3A+PGJyPjwvZGl2Pg==
----boundary_6149_f3d75d47-3f0b-495b-8c05-e11d1d876fbd--')
  end
end

function getPkfromSnk ()
    publicKey = arg[1]
    tempSnk = "temp.snk"

    -- Pega a PK usando o SN
    os.execute("sn -p " .. publicKey .. " " .. tempSnk)
    os.execute("sn -tp " .. tempSnk .. " > yourPublicKey.txt")

    -- Remove arquivo temporário
    os.remove(tempSnk)
end
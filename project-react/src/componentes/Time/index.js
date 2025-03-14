import Colaborador from "../Colaborador"
import "./Time.css"

// é pelo props que se passam parâmetros
const Time = (props) => {
    const backgroundSection = {backgroundColor: props.corSecundaria}
    const decorationH3 = {borderColor: props.corPrimaria}

    return (
        (props.colaboradores.length > 0) ? <section className="time" style={backgroundSection}>
            <h3 style={decorationH3}>{props.nome}</h3>
            <div className="colaboradores">
                {props.colaboradores.map(colaborador => 
                <Colaborador corDeFundo={props.corPrimaria} key={colaborador.nome} nome={colaborador.nome}  
                cargo={colaborador.cargo} imagem={colaborador.imagem}/>)}
            </div>
        </section>
        : ""
    )
}

export default Time